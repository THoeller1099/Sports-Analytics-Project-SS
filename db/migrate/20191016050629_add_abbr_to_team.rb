class AddAbbrToTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :abbr, :string
  end
end
