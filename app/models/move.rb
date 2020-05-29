class Move < ApplicationRecord
    has_many :move_sets
    has_many :pokemons, through: :move_sets
    has_many :poke_team_moves
    has_many :poke_on_teams, through: :poke_team_moves
end
