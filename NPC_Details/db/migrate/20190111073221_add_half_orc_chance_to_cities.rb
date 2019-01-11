class AddHalfOrcChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :halfOrcChance, :integer
  end
end
