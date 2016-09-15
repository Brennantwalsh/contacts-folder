Rails.application.routes.draw do
  get '/' => 'pages#index'
  get '/contacts' => 'pages#index'
  get '/contacts/new' => 'pages#new'
  post '/contacts' => 'pages#create'
  get '/contacts/:id' => 'pages#show'
  get '/contacts/:id/edit' => 'pages#edit'
  patch '/contacts/:id' => 'pages#update'
  delete '/contacts/:id' => 'pages#destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
