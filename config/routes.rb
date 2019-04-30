Rails.application.routes.draw do
  root 'users#input'
  get  '/input' => 'users#input'
  get '/results' => 'users#show'
  post '/users' => 'users#login'
end
