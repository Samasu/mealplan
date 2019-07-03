Rails.application.routes.draw do
   
  devise_for :users
  root to: 'plans#index'
  resources :plans do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
 

  resources :users
end
