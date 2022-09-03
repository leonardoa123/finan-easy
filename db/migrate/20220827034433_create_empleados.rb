class CreateEmpleados < ActiveRecord::Migration[7.0]
  def change
    create_table :empleados do |t|
      t.string :rut_empleado
      t.string :nombre_empleado
      t.string :apellido_empleado
      t.string :tipo_empleado

      t.timestamps
    end
  end
end
