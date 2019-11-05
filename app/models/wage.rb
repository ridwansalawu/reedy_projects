class Wage < ApplicationRecord

    validates :date, presence: true
                #  ,length: { minimum: 5 }
    validates :worker, presence: true, uniqueness: { case_sensitive: false }
    
    


end
