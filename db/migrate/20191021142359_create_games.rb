class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :date
      t.string :home
      t.string :away
      t.integer :home_score
      t.integer :away_score
      t.boolean :ot

      t.timestamps
    end
    add_index :games, :home
    add_index :games, :away
  end
end
