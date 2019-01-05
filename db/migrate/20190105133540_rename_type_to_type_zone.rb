class RenameTypeToTypeZone < ActiveRecord::Migration[5.2]
  def change
    rename_column :zones, :type, :type_zone
  end
end
