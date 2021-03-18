Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/secret'
  resources :categories, only: [:show, :index]
  resources :trivia
  devise_for :users
  

  # Routes for stripe checkout

  scope '/orders' do
    post 'create', to: 'orders#create', as: 'orders_create'
    get 'cancel', to: 'orders#cancel', as: 'orders_cancel'
    get 'success', to: 'orders#success', as: 'orders_success'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
