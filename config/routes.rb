Rails.application.routes.draw do
  root "books#landing"
  resources :books
  resources :users
  resources :reviews
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#signup", as: "signup"
  post "register", to: "users#register", as: "register"

  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"

  get "logout", to: "sessions#destroy", as: "logout"
end
