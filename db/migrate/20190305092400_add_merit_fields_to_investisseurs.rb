class AddMeritFieldsToInvestisseurs < ActiveRecord::Migration[5.2]
  def change
    add_column :investisseurs, :sash_id, :integer
    add_column :investisseurs, :level,   :integer, :default => 0
  end
end
