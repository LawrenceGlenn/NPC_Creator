class AddMaleBaseWeightToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :maleBaseWeight, :integer
  end
end
