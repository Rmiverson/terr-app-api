class Territory < ApplicationRecord
   has_many :checkouts
   has_many :addresses
   has_many :users, through: :checkouts

   enum type: {
      house: 0,
      business: 1,
      writing: 2
   }, _prefix: true
end
