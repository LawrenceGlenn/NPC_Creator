class AddOldAgeToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :oldAge, :integer
  end
end
