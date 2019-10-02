Rails.application.routes.draw do
  resources :posts do
    resources :comments, except: [:index, :show]
  end
  resources :categories, only: [:index, :show]
  resources :users, except: [:index]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  root :to => 'posts#index', as: 'root'
  
end
