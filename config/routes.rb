Rails.application.routes.draw do
 
 
  get 'comments/index'
  get 'comments/new'
  get 'comments/create'
  get 'comments/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gossips
  resources :users
  resources :city
  resources :comments
end
