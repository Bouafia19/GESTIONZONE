class CreateLors < ActiveRecord::Migration[5.2]
  def change
    create_table :lors do |t|
      t.integer :objectid
      t.float :shape_leng
      t.float :shape_area
      t.string :raison_soc
      t.string :nom_et__pr
      t.multi_polygon :geom, :srid => 4326

      t.timestamps
    end
    add_index :lors, :geom,      using: :gist
  end
end
