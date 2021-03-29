# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [
        {
          name: 'Ludee-org Stripe Checkout',
          amount: 1000,
          currency: 'eur',
          quantity: 1
        }
      ],
      success_url: "#{orders_url}?session_id={CHECKOUT_SESSION_ID}",
      cancel_url: root_url
    )
    respond_to do |format|
      format.js
    end
  end

  def index
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    UserMailer.order_email(current_user.id).deliver_now
  end

  def cancel; end
end
