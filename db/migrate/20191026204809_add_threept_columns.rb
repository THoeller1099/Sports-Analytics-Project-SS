class AddThreeptColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :threePtFgAtt, :float
    add_column :players, :threePtFgMade, :float
  end
end
