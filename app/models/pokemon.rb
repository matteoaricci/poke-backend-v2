class Pokemon < ApplicationRecord
    has_many :poke_on_teams
    has_many :move_sets
    has_many :moves, through: :move_sets
end
