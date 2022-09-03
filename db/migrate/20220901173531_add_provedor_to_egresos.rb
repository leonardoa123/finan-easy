class AddProvedorToEgresos < ActiveRecord::Migration[7.0]
  def change
    add_reference :egresos, :proveedors, null: false, foreign_key: true
  end
end
