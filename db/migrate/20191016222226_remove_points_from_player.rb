class RemovePointsFromPlayer < ActiveRecord::Migration[6.0]
  def change

    remove_column :players, :points, :integer
    remove_column :players, :assists, :integer
    remove_column :players, :rebounds, :integer
  end
end
