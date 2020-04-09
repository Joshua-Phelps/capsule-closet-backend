class ItemSerializer < ActiveModel::Serializer
  attributes :id, :category, :sub_category, :color, :size, :brand, :image, :avatar
  # has_one :user
end
