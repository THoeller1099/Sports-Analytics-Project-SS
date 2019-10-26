class RemoveFkGamesTeams < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :games, :teams
    remove_column :games, :team_id, :int
  end
end
