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
          only: [:id, :parcel_number, :name, :po_box, :address_number, :street, :city, :zip_code, :rental, :phone_1, :phone_2, :notes, :do_not_call, :latitude, :longitude]
        }
      },
      except: [:created_at, :updated_at]
    }

    @territory.to_json(options)
  end
end
