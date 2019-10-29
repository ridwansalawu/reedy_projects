class User < ApplicationRecord
    has_secure_password

    def fullname
        "#{last_name.upcase}, #{first_name}"
        
    end




    
end
