class AddSecretToNpcs < ActiveRecord::Migration[5.0]
  def change
    add_column :npcs, :secret, :string
  end
end
