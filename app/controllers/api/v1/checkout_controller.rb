class Api::V1::CheckoutController < ApplicationController
   def index
      checkouts = Checkout.all
      render json: checkouts.to_json
   end

   def show
      checkout = Checkout.find(params[:id])
      render json: checkout.to_json
   end

   private
   def checkout_params
      params.require(:checkout).permit(:id, :user_id, :territory_id)
   end
end
