class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.references :country, foreign_key: true
      t.string :name
      t.string :hasc_code
      t.string :state_type
      t.multi_polygon :geom, :srid => 4326

      t.timestamps
    end
    add_index :states, :geom,      using: :gist
  end
end
