# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'sample.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    puts row['address']
    t = Asset.new
    t.address = row['address']
    t.asset_code = row['asset_code']
    t.cp_page = row['CP page #']
    t.comments = row['SP comments']
    # t.save
    # puts "-----------#{t.address} saved--------------"

end
puts "there are now #+++++++#{Asset.count} rows in the Assets table+++++++++"

# employee = Employee.create(:first_name => "Ridwan", 
#                            :last_name =>"Salawu", 
#                            :DOB =>"1029283", 
#                            :email  => "ridwan@yahoo.com", 
#                            :phone => "7857577r7", 
#                            :address => "mfdghjmv fifjdj kjj")




Rate.create(
    :grade => "supervisor",
    :xlarge_pit => 350,
    :large_pit => 300, 
    :medium_pit => 175,
    :xlarge_acm => 0,
    :large_acm => 0, 
    :medium_acm => 25,
    :trench => 18,
    :concrete => 0,
    :bitumen => 0, 
    :paver => 0, 
    :brick => 0,
    :rock => 0,
    :riser => 0,
    :night => 0,
    :extras => 0, 
    :comments => ""
    
)

Rate.create(
    :grade => "team_leader",
    :xlarge_pit => 350,
    :large_pit => 300, 
    :medium_pit => 175,
    :xlarge_acm => 0,
    :large_acm => 0, 
    :medium_acm => 0,
    :trench => 18,
    :concrete => 0,
    :bitumen => 0, 
    :paver => 0, 
    :brick => 0,
    :rock => 0,
    :riser => 0,
    :night => 0,
    :extras => 0, 
    :comments => ""
    
)

Rate.create(
    :grade => "civil_worker",
    :xlarge_pit => 300,
    :large_pit => 250, 
    :medium_pit => 150,
    :xlarge_acm => 0,
    :large_acm => 0, 
    :medium_acm => 0,
    :trench => 18,
    :concrete => 0,
    :bitumen => 0, 
    :paver => 0, 
    :brick => 0,
    :rock => 0,
    :riser => 0,
    :night => 20,
    :extras => 0, 
    :comments => ""
    
)

Rate.create(
    :grade => "labourer",
    :xlarge_pit => 250,
    :large_pit => 180, 
    :medium_pit => 120,
    :xlarge_acm => 0,
    :large_acm => 0, 
    :medium_acm => 0,
    :trench => 18,
    :concrete => 0,
    :bitumen => 0, 
    :paver => 0, 
    :brick => 0,
    :rock => 0,
    :riser => 0,
    :night => 20,
    :extras => 0, 
    :comments => ""
    
)



# levels = ["director", "manager", "supervisor", "team_leader", "civil_worker", "labourer", "subcontractor"]

# levels.each do |level|
#     Grade.create(rank: level)

# end


# levels.each do |level|
#     Grade.create(rank: level)

# end

# fee_items = [:xlarge_pit, :large_pit, :medium_pit, :xlarge_acm, :large_acm, :medium_acm, :trench, :concrete, :bitumen, :paver, :brick, :rock, :riser, :night, :extras, :others]

# fee_items.each do |i|
#     Fee.create(item: i)
# end