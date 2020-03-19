class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :times_worn, :name
  has_one :user
end
