Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks'}
  resources :questions do
    resources :answers, shallow: true
  end

  namespace :admin do
    resources :categories
    resources :users
  end
  get "admin/welcome/index"
  get "welcome/index"
   resources :profiles
  resources :users
  # resources :categories
  
  root "welcome#index"
end
