class Applicant < ApplicationRecord

    has_one_attached :white_card
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :email

end
