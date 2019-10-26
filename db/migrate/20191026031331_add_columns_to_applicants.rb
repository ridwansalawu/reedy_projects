class AddColumnsToApplicants < ActiveRecord::Migration[6.0]
  def change
      add_column :applicants, "first_name", :string, :null => false
      add_column :applicants, "last_name", :string, :null => false
      add_column :applicants, "DOB", :string  
      add_column :applicants, "email", :string 
      add_column :applicants, "phone",:string 
      add_column :applicants, "address", :string  
  end
end
