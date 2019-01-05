class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.integer :num_lot
      t.string :activite
      t.string :investisseur
      t.string :type_lot
      t.string :situation_physique
      t.string :situation_juridique
      t.date :date_act
      t.integer :num_act
      t.date :date_attribution
      t.date :date_resolution
      t.integer :etat_avancement
      t.string :zone
      t.string :class_activite
      t.text :observation

      t.timestamps
    end
  end
end
