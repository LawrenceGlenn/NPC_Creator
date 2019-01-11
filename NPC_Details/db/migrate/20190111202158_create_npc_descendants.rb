class CreateNpcDescendants < ActiveRecord::Migration[5.0]
  def change
    create_table :npc_descendants do |t|
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
  end
end
