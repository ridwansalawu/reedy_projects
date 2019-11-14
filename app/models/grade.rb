class Grade < ApplicationRecord
    has_many :employees
    has_and_belongs_to_many :fee

end
