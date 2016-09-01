Rails.application.routes.draw do
  get '/one' => 'pages#one'
  get '/all' => 'pages#all'
  get '/add_contact' => 'pages#add_contact'
  post '/add_contact' => 'pages#create_contact'
end
