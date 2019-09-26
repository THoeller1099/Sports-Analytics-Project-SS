class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.string :roster
      t.string :coach
      t.string :record

      t.timestamps
    end
  end
end
