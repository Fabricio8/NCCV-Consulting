json.array!(@distritos) do |distrito|
  json.extract! distrito, :id, :cod_distrito, :nom_distrito, :departamento_id
  json.url distrito_url(distrito, format: :json)
end
