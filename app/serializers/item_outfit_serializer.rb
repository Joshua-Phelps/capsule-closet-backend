class ItemOutfitSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :outfit
end
