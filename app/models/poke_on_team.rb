class PokeOnTeam < ApplicationRecord
    belongs_to :userteam
    belongs_to :pokemon 
    has_many :poke_team_moves
    has_many :moves, through: :poke_team_moves
end
