class AddtypeZoneTolots < ActiveRecord::Migration[5.2]
  def change
    add_column :lots, :type_zone, :string
  end
end
