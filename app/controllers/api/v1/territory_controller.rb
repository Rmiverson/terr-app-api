class TerritoryController < ApplicationController
   def index
      territories = Territory.all
      render json: TerritorySerializer.new(territories).serialized_json
   end

   def show
      territory = Territory.find(params[:id])
      render json: TerritorySerializer.new(territory).serialized_json
   end

   private
   def territory_params
      params.require(:territory).permit(:id, :number, :type, :name, :last_audited, :last_worked, :notes)
   end
end
