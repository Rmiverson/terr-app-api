class UserSerializer < ActiveModel::Serializer
  attributes :id

  def initialize(user)
    @user = user
  end

  def serialized_json(token = nil)
    options = {
      include: {
        checkouts: {
          only: [:id, :start, :finish]
        },
        territories: {
          only: [:id, :number, :name, :type, :last_audited, :last_worked, :notes]
        }
      },
      except: [:password_digest, :created_at, :updated_at]
    }
    data = @user.to_json(options)
  end
end
