Rails.application.routes.draw do
  get 'subscribes/index'
  get 'features/index'
 
  devise_for :userrs
  resources :charges
  
  #devise_for :users
  #devise_for :users
  ActiveAdmin.routes(self)

  root 'home#home'
  get 'home/plan' , to: 'plans#index'
  get 'home/signup'
  get 'home', to: 'home#home'

  get 'subscribe', to: 'subscribes#index'

  get 'signup', to: 'signup#new'
  post 'signup', to: 'signup#create'


  

  post '/subscribes/create/:plan_id', to: 'subscribes#create'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
  # get 'home/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
