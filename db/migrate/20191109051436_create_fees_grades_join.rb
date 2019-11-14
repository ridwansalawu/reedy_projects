class CreateFeesGradesJoin < ActiveRecord::Migration[6.0]
  def change
    create_table :fees_grades, :id => false do |t|
      t.integer :fee_id
      t.integer :grade_id
    end
    add_index :fees_grades, [:fee_id, :grade_id]
   
  end
end
