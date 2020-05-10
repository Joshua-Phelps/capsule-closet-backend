class OutfitsController < ApplicationController
  def create
    outfit = Outfit.new(outfit_params)
    if outfit.name === ''
      user = User.find(outfit_params['user_id'])
      num_of_outfits = user.outfits.length + 1
      outfit.name = 'Outfit '+ num_of_outfits.to_s
    end 
    if outfit.save
      params[:items].each{|item_id| ItemOutfit.create(outfit_id: outfit.id, item_id: item_id)}
      render json: outfit 
    else 
      ## error handle 
    end 
  end

  def update
    outfit = Outfit.find(outfit_params[:id])
    outfit.update(outfit_params)
    outfit.update_item_outfits(params[:items])
    render json: outfit
  end

  def destroy
    outfit = Outfit.find(outfit_params[:id])
    outfit.item_outfits.destroy_all
    outfit.outfit_boards.destroy_all
    outfit.destroy
    render json: {sucess: 'Deleted'}
  end

  private 

  def outfit_params
    params.require(:outfit).permit(:id, :user_id, :times_worn, :name, :items)
  end
end
