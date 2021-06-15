class User < ApplicationRecord
   enum role: [:admin, :reg]
end
