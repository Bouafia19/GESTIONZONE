class AddNomToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nom, :string
  end
end
