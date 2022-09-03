class CreateEgresos < ActiveRecord::Migration[7.0]
  def change
    create_table :egresos do |t|

      t.integer :nro_doc
      t.string :documento
      t.date :fecha_emision
      t.date :fecha_pago
      t.integer :monto_egreso
      t.string :tipo_egreso

      # t.references :proveedor, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
