class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :times_worn, :name, :items

  def items 
    items = object.item_outfits.where(outfit_id: object.id)
    item_ids = items.map{|item_outfit| item_outfit.item_id}
  end 
end
