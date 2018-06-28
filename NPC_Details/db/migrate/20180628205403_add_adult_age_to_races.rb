class AddAdultAgeToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :adultAge, :integer
  end
end
