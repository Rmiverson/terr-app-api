class UserController < ApplicationController
   def index
      users = User.all
      render json: UserSerializer.new(users).serialized_json
   end

   def show
      user = User.find(params[:id])
      render json: UserSerializer.new(user).serialized_json
   end

   private
   def user_params
      params.require(:user).permit(:id, :username, :password, :email, :role, :first_name, :last_name, :baptized, :publisher, :elder)
   end
end
