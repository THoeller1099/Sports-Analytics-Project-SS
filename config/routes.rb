Rails.application.routes.draw do
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
  #get 'games_teams/index'
end
