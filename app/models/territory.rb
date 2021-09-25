class Territory < ApplicationRecord
   has_many :checkouts
   has_many :addresses
   has_many :users, through: :checkouts

   enum type: [:house, :business, :writing]
end
