Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home/about', to: 'homes#about', as: "about"

  resources :books, only: [:new, :index, :show, :edit, :create, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :update]
end
