class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.integer :heightNum
      t.integer :heightDie
      t.integer :heightBase
      t.integer :weightBase
      t.integer :weightMod

      t.timestamps
    end
  end
end
