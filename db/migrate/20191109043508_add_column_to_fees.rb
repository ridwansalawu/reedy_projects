class AddColumnToFees < ActiveRecord::Migration[6.0]
  def change
    add_column :fees, :item, :string
  end
end
