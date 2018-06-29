class ChangeEyeColorToStringInNpcs < ActiveRecord::Migration[5.0]
  def change
    change_column :npcs, :eyecolor, :string
  end
end
