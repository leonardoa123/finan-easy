json.extract! ingreso, :id, :documento, :nro_doc, :fecha_emision, :fecha_pago, :rut_cliente, :monto_ingreso, :tipo_ingreso, :created_at, :updated_at
json.url ingreso_url(ingreso, format: :json)
