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
    pre_merge = @user.to_json(options)
    hash_data = JSON.parse(pre_merge)
    data = hash_data.merge!(token: token).to_json
  end
end
