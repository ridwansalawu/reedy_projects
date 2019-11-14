class AddAnotherColumnToFees < ActiveRecord::Migration[6.0]
  def change
    add_column :fees, :price, :decimal, precision: 7, scale: 2
  end
end
