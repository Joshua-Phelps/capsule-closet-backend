class OutfitBoardSerializer < ActiveModel::Serializer
  attributes :id
  has_one :outfit
  has_one :board
end
