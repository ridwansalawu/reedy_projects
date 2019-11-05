class CreateWages < ActiveRecord::Migration[6.0]
  def change
    create_table :wages do |t|

      t.datetime :date
      t.string :asset_type
      t.string :asset_code
      t.string :pit_id
      t.string :size
      t.boolean :acm
      t.string  :status
      t.string  :shift
      t.decimal :trench_length
      t.decimal :concrete, precision: 7, scale: 2
      t.decimal :bitumen, precision: 7, scale: 2
      t.decimal :paver, precision: 7, scale: 2
      t.decimal :brick, precision: 7, scale: 2
      t.decimal :rock, precision: 7, scale: 2
      t.decimal :riser, precision: 7, scale: 2
      t.decimal :extras, precision: 7, scale: 2
      t.text    :extras_description
      t.decimal :deduction, precision: 7, scale: 2
      t.text    :deduction_description
      t.text    :comments
      t.decimal :total, precision: 10, scale: 2
      t.decimal :total_with_gst, precision: 10, scale: 2


      t.timestamps
    end
  end
end
