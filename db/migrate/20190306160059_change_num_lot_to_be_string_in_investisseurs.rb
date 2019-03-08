class ChangeNumLotToBeStringInInvestisseurs < ActiveRecord::Migration[5.2]
  def change
    change_column :investisseurs, :num_lot, :string

  end
end
