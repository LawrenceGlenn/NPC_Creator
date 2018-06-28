class AddMiddleAgeToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :middleAge, :integer
  end
end
