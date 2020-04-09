class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
    end

    def create
        # byebug
        item = Item.new(category: params[:category], sub_category: params[:sub_category], color: params[:color], size: params[:size], brand: params[:brand], user_id: params[:user_id].to_i)
        item.avatar = params[:image]
        
        if item.save
            render json: item
        else
            render json: {error: 'Unable to create item'} 
        end
    end

    private 

    def item_params
        params.require(:item).permit(:category, :sub_category, :color, :size, :brand, :user_id, :image, :avatar)
    end
end
