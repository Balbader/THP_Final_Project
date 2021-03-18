class OrdersController < ApplicationController
  def create
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      line_items: [
        {
          name: "Ludee-org Stripe Checkout",
          amount: 1000,
          currency: "eur",
          quantity: 1,
        },        
      ],
      mode: 'payment',
      success_url: orders_success_url,
      cancel_url: orders_cancel_url,
    )
    respond_to do |format|
      format.js
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrive(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    new_order = Order.create(user_id:current_user.id)
  end

  def cancel
  end
end
