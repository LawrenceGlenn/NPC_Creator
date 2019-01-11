class AddHumanChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :humanChance, :integer
  end
end
