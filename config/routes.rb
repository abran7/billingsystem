Rails.application.routes.draw do
  
  
  ActiveAdmin.routes(self)
  
  root 'home#login'
  get 'home/logout'
  get 'home/signup'

  

  get 'signup', to: 'signup#new'
  post 'signup', to: 'signup#create'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'


  delete 'logout', to: 'sessions#destroy'
 # get 'home/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
