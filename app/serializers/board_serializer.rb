class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :outfits

  def outfits
    outfit_ids = object.outfits.map{|outfit| outfit.id}
  end 
end
