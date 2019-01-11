class AddHalfElfChanceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :halfElfChance, :integer
  end
end
