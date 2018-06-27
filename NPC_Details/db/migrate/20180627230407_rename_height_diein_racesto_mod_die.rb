class RenameHeightDieinRacestoModDie < ActiveRecord::Migration[5.0]
  def change
    rename_column :races, :heightDie, :modDie
  end
end
