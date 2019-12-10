class CreateSabers < ActiveRecord::Migration[5.2]
  def change
=begin
    create_table :sabers do |t|
      t.string :n_dossier
      t.string :r_socia_fr
      t.multi_polygon :geom, :srid => 4326

      t.timestamps
    end
    add_index :sabers, :geom,      using: :gist
=end
  end
end
