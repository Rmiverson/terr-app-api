class AddressSerializer < ActiveModel::Serializer
  attributes :id

  def initialize(address)
    @address = address
  end

  def serialized_json
    options = {
      include: {
        territory: {
          only: [:number, :name, :type, :last_audited, :last_worked, :notes]
        }
      },
      except: [:created_at, :updated_at]
    }

    @address.to_json(options)
  end
end
