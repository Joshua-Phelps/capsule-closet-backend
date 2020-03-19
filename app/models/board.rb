class Board < ApplicationRecord
    belongs_to :user
    has_many :outfit_boards
    has_many :outfits, through: :outfit_boards
end
