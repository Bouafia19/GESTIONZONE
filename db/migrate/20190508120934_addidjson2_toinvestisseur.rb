class Addidjson2Toinvestisseur < ActiveRecord::Migration[5.2]
  def change
    add_column :investisseurs, :idjson, :integer
  end
end
