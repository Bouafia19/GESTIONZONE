class RenameZoneToNomZone < ActiveRecord::Migration[5.2]
  def change
    rename_column :lots, :zone, :nom_zone
  end
end
