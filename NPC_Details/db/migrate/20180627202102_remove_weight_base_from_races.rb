class RemoveWeightBaseFromRaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :races, :weightBase, :integer
  end
end
