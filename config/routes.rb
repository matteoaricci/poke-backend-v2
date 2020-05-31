Rails.application.routes.draw do
  resources :moves
  resources :move_sets
  resources :pokemons
  resources :poke_team_moves
  resources :poke_on_teams
  resources :userteams
  resources :users

  get '/loadteams/:id', to: 'userteams#get_users_teams'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
