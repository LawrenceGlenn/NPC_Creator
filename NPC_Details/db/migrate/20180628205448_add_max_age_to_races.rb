class AddMaxAgeToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :maxAge, :integer
  end
end
