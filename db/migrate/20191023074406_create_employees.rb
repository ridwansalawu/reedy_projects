class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string "first_name", :null => false
      t.string "last_name", :null => false
      t.string "DOB" 
      t.string "email"
      t.string "phone" 
      t.string "address" 
      t.string "next_of_kin" 
      t.string "next_of_kin_address" 
      t.string "next_of_kin_phone" 
      t.string "abn" 
      t.string "tfn", :limit => 50
      t.string "bsb" 
      t.string "account_no", :limit => 15
      t.string "rank"
      t.string "admin"
     
      

      



      t.timestamps
    end
  end
end





