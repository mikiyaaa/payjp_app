Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'items#index'

  resources :users, only: [:show, :update]
end
