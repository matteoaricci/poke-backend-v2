class User < ApplicationRecord
    has_many :userteams

    has_secure_password
end
