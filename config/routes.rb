Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks'}
  resources :questions do
    resources :answers, shallow: true
  end

  namespace :admin do
    # resources :categories
    resources :users
    get "welcome/index" 
    get "console" => "console#index"
  end
  
    get "welcome/index"
   resources :profiles
  # resources :users
  # resources :categories
  
  root "welcome#index"
end
