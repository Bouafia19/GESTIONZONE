class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name
      t.multi_polygon :geom, :srid => 4326
      t.references :country, foreign_key: true

      t.timestamps
    end
    add_index :regions, :geom,      using: :gist
  end
end
