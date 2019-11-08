class Wage < ApplicationRecord

    validates :date, presence: true
                #  ,length: { minimum: 5 }
    validates :worker, presence: true

   def self.worker_name(worker_username)
    worker_username
   end
    
    


end
