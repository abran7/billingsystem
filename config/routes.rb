Rails.application.routes.draw do
  
  
  root 'home#login'
  get 'home/logout'
  get 'home/signup'
 # get 'home/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end