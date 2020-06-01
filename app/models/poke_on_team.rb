class PokeOnTeam < ApplicationRecord
    belongs_to :userteam, optional: true
    belongs_to :pokemon, optional: true 
    has_many :poke_team_moves
    has_many :moves, through: :poke_team_moves
end
