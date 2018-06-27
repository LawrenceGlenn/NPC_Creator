class AddMaleBaseHeightToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :maleBaseHeight, :integer
  end
end
