class User < ApplicationRecord
    has_secure_password
    has_many :items
    has_many :boards
    has_many :outfits 
end
