class AddGamesTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams_games, id: false do |t|
      t.belongs_to :team
      t.belongs_to :game
    end
  end
end
