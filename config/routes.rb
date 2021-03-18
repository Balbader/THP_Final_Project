Rails.application.routes.draw do
  root 'static_pages#home_page'
  get 'static_pages/secret'

  get 'static_pages/stripe_button'

  # Static Pages routes
  scope '/', controller: :static_pages do
    get :terms, :community, :privacy, :rules, :faq, :about_us, :stripe_button, :secret
  end

  resources :categories, only: [:show, :index]
  resources :trivia
  resources :answers
  post "/trivia/:id", to: "trivia#trivia_answer", as: "trivia_answer"
  devise_for :users

  # Stripe scope
  scope '/orders' do
    post 'create', to: 'orders#create', as: 'orders_create'
    get 'cancel', to: 'orders#cancel', as: 'orders_cancel'
    get 'success', to: 'orders#success', as: 'orders_success'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
