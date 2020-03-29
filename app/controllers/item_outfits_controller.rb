class ItemOutfitsController < ApplicationController

  def destroy
    item_outfit = ItemOutfit.find_by(item_outfit_params)
    outfit = item_outfit.outfit
    item_outfit.destroy
    render json: outfit
  end

  private 

  def item_outfit_params
    params.require(:item_outfit).permit(:id, :item_id, :outfit_id)
  end
end
