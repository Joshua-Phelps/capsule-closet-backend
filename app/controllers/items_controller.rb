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

    def update

        item = Item.find(item_params['id'])
        if item.update(item_params)
            render json: item
        else
            render json: {error: 'Unable to update item'} 
        end
    end

    private 

    def item_params
        params.require(:item).permit(:category, :sub_category, :color, :size, :brand, :user_id, :id, :image, :avatar)
    end
end
