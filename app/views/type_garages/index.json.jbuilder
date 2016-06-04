json.array!(@type_garages) do |type_garage|
  json.extract! type_garage, :id, :Des_typegarage, :no_ceiling, :yes_ceiling
  json.url type_garage_url(type_garage, format: :json)
end
