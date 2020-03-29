class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :times_worn, :name, :items

  def items 
    item_ids = object.items.map{|item| item.id}
  end 
end
