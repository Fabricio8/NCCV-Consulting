json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :codigo_departamento, :nombre_departamento
  json.url departamento_url(departamento, format: :json)
end
