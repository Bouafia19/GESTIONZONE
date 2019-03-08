class ChangeNumDecisionToBeStringInInvestisseurs < ActiveRecord::Migration[5.2]
  def change
    change_column :investisseurs, :num_decision, :string

  end
end
