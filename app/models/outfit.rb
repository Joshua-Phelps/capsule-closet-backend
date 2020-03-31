class Outfit < ApplicationRecord
  belongs_to :user
  has_many :item_outfits
  has_many :items, through: :item_outfits
  has_many :outfit_boards
  has_many  :boards, through: :outfit_boards

  def update_item_outfits(new_items)
    outfit_item_item_ids = self.items.map{|item| item.id}
    items_to_destroy_ids = outfit_item_item_ids.filter{|id| !new_items.include?(id)}
    items_to_destroy_ids.each{|item_id| ItemOutfit.find_by(item_id: item_id, outfit_id: self.id).destroy}
    n_items = new_items.each{|item_id| ItemOutfit.find_or_create_by(outfit_id: self.id, item_id: item_id)}
  end 

end
