class AddAlignmentToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_column :npcs, :alignment, :string
  end
end
