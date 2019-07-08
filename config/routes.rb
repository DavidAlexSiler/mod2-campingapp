Rails.application.routes.draw do
  resources :notes

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :reservations
  resources :planets 
  resources :reviews

end
