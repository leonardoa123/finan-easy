class AddEmpleadoToRemuneracions < ActiveRecord::Migration[7.0]
  def change
    add_reference :remuneracions, :empleados, null: false, foreign_key: true
  end
end
