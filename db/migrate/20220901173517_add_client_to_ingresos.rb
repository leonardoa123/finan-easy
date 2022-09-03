class AddClientToIngresos < ActiveRecord::Migration[7.0]
  def change
    add_reference :ingresos, :cliente, null: false, foreign_key: true
  end
end
