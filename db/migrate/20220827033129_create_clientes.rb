class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :rut_cliente
      t.string :nombre_cliente

      t.timestamps
    end
  end
end
