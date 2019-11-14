class RemoveDetailsFromGrades < ActiveRecord::Migration[6.0]
  def change
    change_table :grades do |t|
      t.remove :director, :manager, :supervisor, :team_leader, :civil_worker, :labourer, :subcontractor
    end

  end
end
