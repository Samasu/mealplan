Rails.application.routes.draw do
  root to: 'homepages#index'
  devise_for :users 
  resources :users

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
    get :like, on: :member
  end
  
  resources :plans do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
 
  

  
end
