class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :team
      t.integer :points
      t.integer :assists
      t.integer :rebounds

      t.timestamps
    end
  end
end
