class AddTeamIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :team_id, :integer
  end
end
