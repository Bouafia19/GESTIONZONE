class ChangeNumActToBeStringInLots < ActiveRecord::Migration[5.2]
  def change
    change_column :lots, :num_act, :string

  end
end
