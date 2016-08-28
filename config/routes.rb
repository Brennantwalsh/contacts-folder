Rails.application.routes.draw do
  get '/one' => 'pages#one'
  get '/all' => 'pages#all'
end
