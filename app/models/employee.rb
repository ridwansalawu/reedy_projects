class Employee < ApplicationRecord
    belongs_to :grade


    scope :sorted, lambda { order("id ASC")}
    # Ex:- scope :active, lambda {where(:active => true)}
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :email
end
