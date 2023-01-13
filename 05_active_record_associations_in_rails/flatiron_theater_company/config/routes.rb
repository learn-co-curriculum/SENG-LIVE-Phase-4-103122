Rails.application.routes.draw do
 
  resources :tickets, only: [:index, :show, :create]
  resources :cast_members, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :productions, only: [ :index, :show, :create, :update, :destroy]
  # Custome Route 
 
  

end
