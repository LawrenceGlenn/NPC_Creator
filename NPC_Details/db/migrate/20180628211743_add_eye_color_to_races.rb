class AddEyeColorToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :eyeColor, :text
  end
end
