class User < ApplicationRecord
    has_secure_password
    has_one :rate

    def fullname
        "#{last_name.upcase}, #{first_name}"
        
    end






    
end
