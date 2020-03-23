class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :times_worn, :name, :items
  has_one :user

  def items 
    item_ids = object.items.map{|item| item.id}
  end 
end
