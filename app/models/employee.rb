class Employee < ApplicationRecord
    scope :sorted, lambda { order("id ASC")}
    # Ex:- scope :active, lambda {where(:active => true)}
    
end
