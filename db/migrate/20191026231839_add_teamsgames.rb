class AddTeamsgames < ActiveRecord::Migration[6.0]
  def change
    create_table :teams_games, id: false do |t|
      t.integer :team_id
      t.integer :game_id
    end
  end
end
