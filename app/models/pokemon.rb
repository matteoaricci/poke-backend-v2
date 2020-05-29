class Pokemon < ApplicationRecord
    has_many :poke_on_teams
    has_many :movesets
    has_many :moves, through: :movesets
end
