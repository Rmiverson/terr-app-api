class Api::V1::AddressController < ApplicationController
   def index
      addresses = Address.all
      render json: AddressSerializer.new(addresses).serialized_json
   end

   def show
      address = Address.find(params[:id])
      render json: AddressSerializer.new(address).serialized_json
   end

   private
   def address_params
      params.require(:address).permit(:id, :parcel_number, :name, :address_number, :city, :zip_code, :notes, :do_not_call, :latitude, :longitude)
   end
end
