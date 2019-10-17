class RemoveRosterFromTeam < ActiveRecord::Migration[6.0]
  def change

    remove_column :teams, :roster, :string
  end
end
