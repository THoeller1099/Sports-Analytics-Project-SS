class AddImage < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :image, :string
  end
end
