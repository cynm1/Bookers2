Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
end