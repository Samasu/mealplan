Rails.application.routes.draw do
  get 'users/show'
  root to: 'plans#index'
  resources :plans
  devise_for :users, controllers: {
           registrations: 'users/registrations'
  }
  devise_scope :user do
   get 'my_page' => 'users/registrations#my_page'
  end
end
