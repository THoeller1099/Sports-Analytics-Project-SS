class CreateGamesTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :games_teams do |t|
      t.integer :team_id
      t.integer :game_id

      t.timestamps
    end
  end
end
