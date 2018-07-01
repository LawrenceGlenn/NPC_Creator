class AddHairColorToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :hairColor, :text
  end
end
