class RemoveRecordFromTeam < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :record, :string
  end
end
