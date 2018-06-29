class ChangeEyeColorToTextInNpcs < ActiveRecord::Migration[5.0]
  def change
    change_column :npcs, :eyecolor, :text
  end
end
