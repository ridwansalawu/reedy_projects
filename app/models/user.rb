class User < ApplicationRecord
    has_secure_password

    validates :first_name, presence: true
    # has_one :rate

    def fullname
        "#{last_name.upcase}, #{first_name}"
        
    end






    
end
