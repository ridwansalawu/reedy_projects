class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :phone, :null => false
      t.string :username, :null => false
     

      t.timestamps
    end
  end

  def down
    drop_table :users
    
  end
  
end
