# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home_page'

  # Static Pages Scope
  scope '/', controller: :static_pages do
    get :terms, :community, :privacy, :rules, :faq, :about_us, :loan_rules, :stripe_button, :secret
  end

  resources :categories, only: %i[show index]
  resources :trivia
  resources :answers

  scope '/trivia' do
    post ':id', to: 'trivia#trivia_answer', as: 'trivia_answer'
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  # Stripe routes
  resources :orders, only: %i[create index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
