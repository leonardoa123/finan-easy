# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_01_173654) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "rut_cliente"
    t.string "nombre_cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egresos", force: :cascade do |t|
    t.integer "nro_doc"
    t.string "documento"
    t.date "fecha_emision"
    t.date "fecha_pago"
    t.integer "monto_egreso"
    t.string "tipo_egreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proveedors_id", null: false
    t.index ["proveedors_id"], name: "index_egresos_on_proveedors_id"
  end

  create_table "empleados", force: :cascade do |t|
    t.string "rut_empleado"
    t.string "nombre_empleado"
    t.string "apellido_empleado"
    t.string "tipo_empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingresos", force: :cascade do |t|
    t.integer "nro_doc"
    t.string "documento"
    t.date "fecha_emision"
    t.date "fecha_pago"
    t.integer "monto_ingreso"
    t.string "tipo_ingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cliente_id", null: false
    t.index ["cliente_id"], name: "index_ingresos_on_cliente_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "rut_proveedor"
    t.string "nombre_proveedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remuneracions", force: :cascade do |t|
    t.integer "id_remuneracion"
    t.string "rut_empleado"
    t.integer "monto_remun"
    t.integer "imposiciones"
    t.integer "anticipo"
    t.integer "impuesto_unic"
    t.integer "tipo_remu"
    t.date "mes_remuneracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "empleados_id", null: false
    t.index ["empleados_id"], name: "index_remuneracions_on_empleados_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "egresos", "proveedors", column: "proveedors_id"
  add_foreign_key "ingresos", "clientes"
  add_foreign_key "remuneracions", "empleados", column: "empleados_id"
end
