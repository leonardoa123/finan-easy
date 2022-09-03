json.extract! egreso, :id, :documento, :nro_doc, :fecha_emision, :fecha_pago, :rut_proveedor, :monto_egreso, :tipo_egreso, :created_at, :updated_at
json.url egreso_url(egreso, format: :json)
