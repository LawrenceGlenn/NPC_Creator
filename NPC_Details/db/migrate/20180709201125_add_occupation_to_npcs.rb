class AddOccupationToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_column :npcs, :occupation, :string
  end
end
