class PokeTeamMove < ApplicationRecord
    belongs_to :poke_on_team
    belongs_to :move
end
