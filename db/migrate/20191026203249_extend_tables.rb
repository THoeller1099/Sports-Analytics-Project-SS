class ExtendTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :team, :string
    add_column :players, :year, :string
    add_column :players, :position, :string
    add_column :players, :team_name, :string
    add_column :players, :blocks, :float
    add_column :players, :steals, :float
    add_column :players, :twoPtFgAtt, :float
    add_column :players, :twoPtFgMade, :float
    add_column :players, :freeThrowAtt, :float
    add_column :players, :freeThrowMade, :float
    
    remove_column :teams, :coach, :string
    add_column :teams, :year, :string
    add_column :teams, :games_played, :integer
    add_column :teams, :wins, :integer
    add_column :teams, :losses, :integer
    
    remove_column :games, :ot, :boolean
    add_column :games, :time, :string
    
  
    
  end
end
