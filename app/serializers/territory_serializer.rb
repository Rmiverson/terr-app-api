class TerritorySerializer < ActiveModel::Serializer
  attributes :id

  def initialize(territory)
    @territory = territory
  end

  def serialized_json
    options = {
      include: {
        checkouts: {
          only: [:id, :start, :finish]
        },
        addresses: {
          only: [:id, :parcel_number, :name, :address_number, :city, :zip_code, :notes, :do_not_call, :latitude, :longitude]
        }
      },
      except: [:created_at, :updated_at]
    }

    @territory.to_json(optinos)
  end
end
