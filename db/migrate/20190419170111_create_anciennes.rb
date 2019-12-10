class CreateAnciennes < ActiveRecord::Migration[5.2]
  def change
=begin
    create_table :anciennes do |t|
      t.string :n_de_lot
      t.string :n_dossier
      t.string :r_socia_ar
      t.string :r_socia_fr
      t.multi_polygon :geom, :srid => 3857

      t.timestamps
    end
    add_index :anciennes, :geom,      using: :gist
=end
  end
end
