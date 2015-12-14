Rails.application.routes.draw do
  resources :questions
  devise_for :users
  # resources :posts do
  #   get :unpublished, on: :collection
  #   resources :comments, shallow: true
  # end

  # namespace :admin do
  #   resources :categories
  #   resources :users
  # end
  # get "admin/welcome/index"
  get "welcome/index"
  # resources :profiles
  resources :users
  # resources :categories
  
  root "welcome#index"
end
