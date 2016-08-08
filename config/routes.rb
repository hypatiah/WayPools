Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  root 'users#index'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
