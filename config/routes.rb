Rails.application.routes.draw do
  resources :posts
  resources :categories, only: [:index, :show]
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  root :to => 'application#welcome', as: 'root'
  
end
