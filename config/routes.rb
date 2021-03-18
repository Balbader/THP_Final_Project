Rails.application.routes.draw do
  root 'static_pages#home_page'
  get 'static_pages/secret'
<<<<<<< HEAD
  get 'static_pages/stripe_button'
=======
  get 'about_us', to: 'static_pages#about_us'
  get 'rules', to: 'static_pages#rules'
  get 'faq', to: 'static_pages#faq'
  get 'community', to: 'static_pages#community'
  get 'terms', to: 'static_pages#terms'
  get 'privacy', to: 'static_pages#privacy'
>>>>>>> development
  resources :categories, only: [:show, :index]
  resources :trivia
  resources :answers
  post "/trivia/:id", to: "trivia#trivia_answer", as: "trivia_answer"
  devise_for :users
  resource :orders, only: [:create, :success, :cancel]
  # Stripe scope
 # scope '/orders' do
  #  post 'create', to: 'orders#create', as: 'orders_create'
   # get 'cancel', to: 'orders#cancel', as: 'orders_cancel'
    #get 'success', to: 'orders#success', as: 'orders_success'
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
