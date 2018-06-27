class AddFemaleBaseHeightToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :femaleBaseHeight, :integer
  end
end
