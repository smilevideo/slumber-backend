Rails.application.routes.draw do
  resources :activities, only: [:create, :update, :destroy]
  resources :days, only: [:create, :update, :destroy]
  resources :dreams, only: [:create, :update, :destroy]
  resources :sleeps, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:create]
  get '/user_data', to: 'users#user_data'
  post '/login', to: 'auth#create'
end
