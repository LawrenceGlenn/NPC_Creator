class AddGoblinChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :goblinChance, :integer
  end
end
