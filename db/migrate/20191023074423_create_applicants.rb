class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|

      t.string "first_name", :null => false
      t.string "last_name", :null => false
      t.string "DOB" 
      t.string "email"
      t.string "phone" 
      t.string "address" 
      
      

      t.timestamps
    end
  end
end
