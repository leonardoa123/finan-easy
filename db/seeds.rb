# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

array_dates = ('01-01-1990'.to_date..'14-07-2022'.to_date).to_a

clients = []
providers = []
employees = []

20.times do |i|
    clients << Cliente.create!(rut_cliente: "#{(i + 1).to_s}-k", nombre_cliente: Faker::Name.name)
end

20.times do |i|
    providers << Proveedor.create!(rut_proveedor: "#{(i + 1).to_s}-k", nombre_proveedor: Faker::Name.name)
end

20.times do |i|
    employees << Empleado.create!(rut_empleado: "#{(i + 1).to_s}-k", 
    nombre_empleado: Faker::Name.name,
    tipo_empleado: ["Fijo", "Honorarios"].sample)
end

#seed del modelo egresos:
providers.each_with_index do |provider, i|
    Egreso.create!(documento: "Factura de compra NRO #{i + 1}", 
    nro_doc: "#{i + 1}", 
    fecha_emision: array_dates.sample, 
    fecha_pago: array_dates.sample, 
    proveedor: provider,
    monto_egreso: 10000 + i,
    tipo_egreso: ["compra", "otros egresos"].sample)
end

#seed del modelo ingresos:
clients.each_with_index do |client, i|
    Ingreso.create!(documento: "Factura de venta Nro #{i + 1}", 
    nro_doc: "#{i + 1}", 
    fecha_emision: array_dates.sample, 
    fecha_pago: array_dates.sample, 
    cliente: client,
    monto_ingreso: 20000 + i,
    tipo_ingreso: ["Venta", "Otros ingresos"].sample)
end

employees.each_with_index do |employee, i|
    Remuneracion.create!(anticipo: 1000,
    imposiciones: 1000,
    impuesto_unic: 500,
    mes_remuneracion: array_dates.sample, 
    empleado: employee,
    monto_remun: 10000 + i,
    tipo_remu: ["Fijo", "Honorarios"].sample)
end

