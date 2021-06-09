Rails.application.routes.draw do
  get 'about', to: 'items#about'
  post 'items/add_to_cart/:id', to: 'items#add_to_cart', as: 'add_to_cart'
  delete 'items/remove_from_cart/:id', to: 'items#remove_from_cart', as: 'remove_from_cart'


  resources :items
  root to: 'items#index'
 
  resources :landing, only: [:index, :show]
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
