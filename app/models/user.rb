class User < ApplicationRecord
   has_secure_password
   
   enum role: {
      guest: 0,
      regular: 1,
      admin: 2
   }, _prefix: true

   has_many :checkouts, :dependent => :delete_all
   has_many :territories, through: :checkouts, :dependent => :delete_all

   after_initialize do
      if self.new_record?
         self.role ||= :regular
      end
   end
end
