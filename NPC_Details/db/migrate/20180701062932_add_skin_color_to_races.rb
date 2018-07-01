class AddSkinColorToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :skinColor, :text
  end
end
