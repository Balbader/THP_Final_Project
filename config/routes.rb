Rails.application.routes.draw do
  root 'static_pages#home_page'
  get 'static_pages/secret'

  get 'static_pages/stripe_button'

  # Static Pages Scope
  scope '/', controller: :static_pages do
    get :terms, :community, :privacy, :rules, :faq, :about_us, :stripe_button, :secret
  end

  resources :categories, only: [:show, :index]
  resources :trivia
  resources :answers
  scope '/trivia' do
    post ':id', to: 'trivia#trivia_answer', as: 'trivia_answer'
  end

  devise_for :users, :controllers => {:registrations => "registrations"}

  # Stripe routes
  resources :orders, only: [:create, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
