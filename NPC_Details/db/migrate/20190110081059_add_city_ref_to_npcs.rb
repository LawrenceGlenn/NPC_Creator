class AddCityRefToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_reference :npcs, :city, foreign_key: true
  end
end
