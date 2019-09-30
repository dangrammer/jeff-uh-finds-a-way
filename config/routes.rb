Rails.application.routes.draw do
  resources :posts
  resources :categories, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
