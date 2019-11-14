class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :director
      t.string :manager
      t.string :supervisor
      t.string :team_leader
      t.string :civil_worker
      t.string :labourer
      t.string :subcontractor
      


      t.timestamps
    end
  end
end
