class ChangeNumDossierToBeStringInInvestisseurs < ActiveRecord::Migration[5.2]
  def change
    change_column :investisseurs, :num_dossier, :string
  end
end
