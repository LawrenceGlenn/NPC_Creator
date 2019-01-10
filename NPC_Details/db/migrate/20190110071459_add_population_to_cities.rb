class AddPopulationToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :population, :integer
  end
end
