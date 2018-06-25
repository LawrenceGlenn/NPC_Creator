class CreateNpcs < ActiveRecord::Migration[5.0]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :nickname
      t.string :surname
      t.integer :age
      t.string :sex
      t.string :haircolor
      t.string :eyecolor
      t.string :skincolor
      t.text :notes
      t.integer :level
      t.integer :height
      t.integer :weight

      t.timestamps
    end
    add_index :npcs, :race_id
    
  end
end
