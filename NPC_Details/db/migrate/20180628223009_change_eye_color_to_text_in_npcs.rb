class ChangeEyeColorToTextInNpcs < ActiveRecord::Migration[5.0]
  def change
    change_coulmn :npcs, :eyeColor, :text
  end
end
