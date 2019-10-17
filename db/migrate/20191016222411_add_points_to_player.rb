class AddPointsToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :points, :float
    add_column :players, :assists, :float
    add_column :players, :rebounds, :float
  end
end
