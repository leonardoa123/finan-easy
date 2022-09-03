json.extract! cliente, :id, :rut_cliente, :nombre_cliente_string, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
