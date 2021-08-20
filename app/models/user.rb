class User < ApplicationRecord
   has_secure_password
   
   enum role: [:admin, :reg]

   has_many :checkouts, :dependent => :delete_all
   has_many :territories, through: :checkouts, :dependent => :delete_all
end
