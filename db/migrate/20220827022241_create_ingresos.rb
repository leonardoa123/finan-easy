class CreateIngresos < ActiveRecord::Migration[7.0]
  def change
    create_table :ingresos do |t|

      t.integer :nro_doc
      t.string :documento
      t.date :fecha_emision
      t.date :fecha_pago
      t.integer :monto_ingreso
      t.string :tipo_ingreso

      # t.references :cliente, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
