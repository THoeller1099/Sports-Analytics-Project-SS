class Addgt < ActiveRecord::Migration[6.0]
  def change
    create_table :games_teams, id: false do |t|
      t.integer :team_id
      t.integer :game_id
    end
  end
end
