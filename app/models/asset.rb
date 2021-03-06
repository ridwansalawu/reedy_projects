class Asset < ApplicationRecord
    
    scope :pits, lambda { where(:asset_type => "pit")}
    scope :trench, lambda { where(:asset_type => "trench")}
    scope :sorted, lambda { order("id ASC")}
    scope :search_asset_code, lambda {|query| where("asset_code LIKE ?", "%#{query}%")}
    scope :search_pit_id, lambda {|query| where("pit_id LIKE ?", "%#{query}%")}
    
    validates_presence_of :asset_code
    validates_presence_of :asset_type

    


end
