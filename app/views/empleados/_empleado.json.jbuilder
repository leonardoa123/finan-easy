json.extract! empleado, :id, :rut_empleado, :nombre_empleado, :apellido_empleado, :tipo_empleado, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
