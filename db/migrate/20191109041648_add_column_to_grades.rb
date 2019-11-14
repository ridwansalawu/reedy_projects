class AddColumnToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :rank, :string
  end
end
