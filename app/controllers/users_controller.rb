class UsersController < ApplicationController
    def create
        user = User.new(user_params)
        if user.save 
            render json: {success: 'User Created'}
        else 
            render json: {error: 'Unable to create user'}
        end 
    end

    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end 
end
