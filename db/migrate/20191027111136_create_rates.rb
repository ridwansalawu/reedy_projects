class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|

      t.string :grade
      t.decimal :xlarge_pit, precision: 7, scale: 2
      t.decimal :large_pit, precision: 7, scale: 2
      t.decimal :medium_pit, precision: 7, scale: 2
      t.decimal :xlarge_acm, precision: 7, scale: 2
      t.decimal :large_acm, precision: 7, scale: 2
      t.decimal :medium_acm, precision: 7, scale: 2
      t.decimal :trench, precision: 7, scale: 2
      t.decimal :concrete, precision: 7, scale: 2
      t.decimal :bitumen, precision: 7, scale: 2
      t.decimal :paver, precision: 7, scale: 2
      t.decimal :brick, precision: 7, scale: 2
      t.decimal :rock, precision: 7, scale: 2
      t.decimal :riser, precision: 7, scale: 2
      t.decimal :night, precision: 7, scale: 2
      t.decimal :extras, precision: 7, scale: 2
      t.text    :comments

      t.timestamps
    end
  end
end
