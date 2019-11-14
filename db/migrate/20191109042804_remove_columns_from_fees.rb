class RemoveColumnsFromFees < ActiveRecord::Migration[6.0]
  def change
    change_table :fees do |t|
      t.remove :xlarge_pit, :large_pit, :medium_pit, :xlarge_acm, :large_acm, :medium_acm, :trench, :concrete, :bitumen, :paver, :brick, :rock, :riser, :night, :extras, :others
    end 

  end
end
