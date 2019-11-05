class AddWorkerToWages < ActiveRecord::Migration[6.0]
  def change
    add_column :wages, :worker, :string
  end
end
