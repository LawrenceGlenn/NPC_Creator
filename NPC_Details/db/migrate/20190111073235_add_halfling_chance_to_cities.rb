class AddHalflingChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :halflingChance, :integer
  end
end
