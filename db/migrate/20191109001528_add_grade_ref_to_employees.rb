class AddGradeRefToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :grade, foreign_key: true
  end
end
