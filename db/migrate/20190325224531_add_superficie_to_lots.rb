class AddSuperficieToLots < ActiveRecord::Migration[5.2]
  def change
    add_column :lots, :superficie, :float
  end
end
