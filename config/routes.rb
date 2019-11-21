Rails.application.routes.draw do
  resources :activities
  resources :days
  resources :dreams
  resources :sleeps
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  get '/profile', to: 'users#profile'

  post '/login', to: 'auth#create'
end
