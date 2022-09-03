class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors do |t|
      t.string :rut_proveedor
      t.string :nombre_proveedor

      t.timestamps
    end
  end
end
