Rails.application.routes.draw do


  root to: "homes#top"
  devise_for :users
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/homes/about', to: 'homes#about', as: "about"

  resources :books, only: [:new, :index, :show, :edit, :create]
  resources :users, only: [:show, :edit, :index]
end
