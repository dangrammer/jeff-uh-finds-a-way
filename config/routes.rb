Rails.application.routes.draw do
  resources :posts
  resources :comments, except: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :users, except: [:index]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  root :to => 'posts#index', as: 'root'
  
end
