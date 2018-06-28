class AddRaceToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_reference :npcs, :race, foreign_key: true
  end
end
