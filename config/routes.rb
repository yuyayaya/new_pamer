Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'favorites/create'
  get 'favorites/destroy'
  get 'comments/create'
  get 'user/new'
  get 'user/create'
  
  
 resources :user do
  get :search, on: :collection
 end
 
 resources :plans do
  member do
   resources :favorites
  end
 end
 
 resources :favorites, only: [:create, :destroy]
 
 resources :comments, only: [:create]
 
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
