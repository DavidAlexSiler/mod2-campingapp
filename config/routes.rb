Rails.application.routes.draw do
  get '/', to: 'sessions#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :notes
  resources :users
  resources :reservations
  resources :planets 
  resources :reviews

end
