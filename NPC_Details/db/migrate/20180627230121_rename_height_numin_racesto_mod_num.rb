class RenameHeightNuminRacestoModNum < ActiveRecord::Migration[5.0]
  def change
    rename_column :races, :heightNum, :modNum
  end
end
