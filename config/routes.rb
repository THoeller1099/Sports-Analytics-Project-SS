Rails.application.routes.draw do

  get 'sessions/new'
  resources :users
  #resources :games_teams
  resources :games
  get 'home/index'
  resources :teams
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'players/index'
  get 'games/index'
  get 'teams/index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  
  #User profile
  resources :users
  #get 'games_teams/index'
  resources :schedules
  get 'schedules/index'
end
