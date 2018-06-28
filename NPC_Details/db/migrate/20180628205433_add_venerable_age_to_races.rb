class AddVenerableAgeToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :venerableAge, :integer
  end
end
