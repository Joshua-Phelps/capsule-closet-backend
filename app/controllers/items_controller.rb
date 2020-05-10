class ItemsController < ApplicationController


    def index
        items = Item.all
        render json: items
    end

    def create  
        # byebug
        item = Item.new(item_params)  
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
