Rails.application.routes.draw do

  root 'users#index'

  get 'users/index'

  resources :users
  
end
