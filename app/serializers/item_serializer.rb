class ItemSerializer < ActiveModel::Serializer
  attributes :id, :category, :sub_category, :color, :size, :brand, :image
  has_one :user
end
