Rails.application.routes.draw do
  root "books#landing"
  resources :books
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#signup", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
end
