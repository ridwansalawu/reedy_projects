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

employee = Employee.create(:first_name => "Ridwan", :last_name =>"Salawu", :DOB =>"1029283", :email  => "ridwan@yahoo.com", :phone => "7857577r7", :address => "mfdghjmv fifjdj kjj")


