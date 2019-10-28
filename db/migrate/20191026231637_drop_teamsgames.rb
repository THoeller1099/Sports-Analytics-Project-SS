class DropTeamsgames < ActiveRecord::Migration[6.0]
  def change
    drop_table :teams_games
  end
end
