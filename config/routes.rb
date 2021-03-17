Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/secret'
  resources :categories, only: [:show, :index]
  resources :trivia
  devise_for :users
  resources :orders, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
