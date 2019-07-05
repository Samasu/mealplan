Rails.application.routes.draw do

  devise_for :users do
   resource :relationships, only; [:create, :destroy]
   get :follows, on: :member
   get :followers, on: :member
  end

  root to: 'plans#index'
  resources :plans do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
 

  resources :users
end
