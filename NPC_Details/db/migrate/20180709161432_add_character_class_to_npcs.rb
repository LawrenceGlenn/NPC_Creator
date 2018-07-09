class AddCharacterClassToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_column :npcs, :characterClass, :string
  end
end
