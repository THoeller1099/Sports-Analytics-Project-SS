class AddDivisions < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :division, :string
  end
end
