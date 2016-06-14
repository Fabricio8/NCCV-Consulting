json.array!(@garages) do |garage|
  json.extract! garage, :id, :name, :dimension, :observation, :address, :reference, :location, :latitude, :length, :accuracy, :profile_id, :district_id
  json.url garage_url(garage, format: :json)
end
