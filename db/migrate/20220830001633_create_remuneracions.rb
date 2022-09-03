class CreateRemuneracions < ActiveRecord::Migration[7.0]
  def change
    create_table :remuneracions do |t|

      t.integer :id_remuneracion
      t.string :rut_empleado
      t.integer :monto_remun
      t.integer :imposiciones
      t.integer :anticipo
      t.integer :impuesto_unic
      t.integer :tipo_remu
      t.date :mes_remuneracion

      # t.references :empleado, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
