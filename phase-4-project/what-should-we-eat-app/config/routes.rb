Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :create, :destroy]
  resources :user_restaurants
  resources :users, only: [:show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'sessions#create'
end
