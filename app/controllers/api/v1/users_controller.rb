class Api::V1::UsersController < ApplicationController
   skip_before_action :authorized, only: [:create]

   #signup
   def create
      user = User.create(user_params)

      if user.valid?
         token = encode_token({user_id: user.id})
         render json:  UserSerializer.new(user).serialized_json(token), status: 200
      else
         render json: {error: "invalid username or password"}, status: 401
      end
   end

   def index
      users = User.all
      render json: UserSerializer.new(users).serialized_json, status: 200
   end

   def show
      user = User.find(params[:id])
      render json: UserSerializer.new(user).serialized_json, status: 200
   end

   private
   def user_params
      params.require(:user).permit(:id, :username, :password, :email, :role, :first_name, :last_name, :baptized, :publisher, :elder)
   end
end
