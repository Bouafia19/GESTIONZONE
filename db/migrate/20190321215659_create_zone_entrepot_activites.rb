class CreateZoneEntrepotActivites < ActiveRecord::Migration[5.2]
  def change
    create_table :zone_entrepot_activites do |t|
      t.string :code_zone
      t.string :type_zone
      t.string :nom_zone
      t.string :commune
      t.string :wilaya
      t.integer :num_arrete_creation
      t.date :dat_arrete_creation
      t.float :superf_total
      t.float :superf_cessible
      t.float :superf_vrd
      t.integer :nbr_lots
      t.integer :nbr_lot_attribues
      t.integer :nbr_lot_cession
      t.integer :nbr_lot_concession
      t.text :observation

      t.timestamps
    end
  end
end
