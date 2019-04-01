class ChangeNumLotToBeStringInLots < ActiveRecord::Migration[5.2]
  def change
    change_column :lots, :num_lot, :string
  end
end
