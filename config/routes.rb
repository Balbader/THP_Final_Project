Rails.application.routes.draw do
  root 'static_pages#index'
  resources :categories, only: [:show, :index]
  resources :trivia
  resources :static_pages
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
