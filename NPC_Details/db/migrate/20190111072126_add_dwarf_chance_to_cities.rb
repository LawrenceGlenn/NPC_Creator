class AddDwarfChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :dwarfChance, :integer
  end
end
