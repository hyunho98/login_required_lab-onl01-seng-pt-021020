Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/login' => 'sessions#destroy'

  get 'secrets/new'
  get '/secret' => 'secrets#show'

end
