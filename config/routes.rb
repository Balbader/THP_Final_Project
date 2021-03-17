Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/secret'
  resources :categories, only: [:show, :index]
  resources :trivia
  resources :answers
  post "/trivia/:id", to: "trivia#trivia_answer", as: "trivia_answer"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
