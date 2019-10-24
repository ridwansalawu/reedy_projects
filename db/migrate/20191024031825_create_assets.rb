class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :asset_code
      t.string :address
      t.string :pit_id
      t.string :cp_page #construction plan page
      t.string :asset_type
      t.string :is_acm
      t.string :initial_config
      t.string :proposed_config
      t.string :actual_config
      t.string :status
      t.string :workers
      t.string :actions
      t.text   :comments
      t.timestamps
    end
  end
end
