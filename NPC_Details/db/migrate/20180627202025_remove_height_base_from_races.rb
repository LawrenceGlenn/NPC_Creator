class RemoveHeightBaseFromRaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :races, :heightBase, :integer
  end
end
