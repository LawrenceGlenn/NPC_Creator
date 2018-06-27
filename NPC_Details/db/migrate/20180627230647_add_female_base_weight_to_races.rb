class AddFemaleBaseWeightToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :femaleBaseWeight, :integer
  end
end
