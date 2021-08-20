class User < ApplicationRecord
   has_secure_password
   
   enum role: [:guest, :regular, :admin]

   has_many :checkouts, :dependent => :delete_all
   has_many :territories, through: :checkouts, :dependent => :delete_all

   after_initialize do
      if self.new_record?
         self.role ||= :regular
      end
   end
end
