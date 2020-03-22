class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:login])
        if user && user.authenticate(params[:password])
          # issue that user a token\
          token = issue_token(user)
          render json: {user: ActiveModelSerializers::SerializableResource.new(user), jwt: token}
        else
          render json: {error: 'That user could not be found'}, status: 401
        end
      end
      
      
    
      def show
        user = User.find_by(id: user_id)
        if logged_in?
          render json: user
        else
          render json: {error: 'No user could be found'}, status: 401
        end
      end
    end

end 