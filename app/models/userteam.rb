class Userteam < ApplicationRecord
    has_many :poke_on_teams
    belongs_to :user
end
