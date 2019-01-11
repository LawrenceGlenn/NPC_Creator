class AddGnomeChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :gnomeChance, :integer
  end
end
