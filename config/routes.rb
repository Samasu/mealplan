Rails.application.routes.draw do
   

  get 'comments/create'
  get 'comments/destory'
  devise_for :users
  root to: 'plans#index'
  resources :plans do
    resource :likes, only: [:create, :destroy]
  end
 

  resources :users
end
