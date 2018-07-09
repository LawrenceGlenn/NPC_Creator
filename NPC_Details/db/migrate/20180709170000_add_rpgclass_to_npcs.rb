class AddRpgclassToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_column :npcs, :rpgclass, :string
  end
end
