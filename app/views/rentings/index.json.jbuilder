json.array!(@rentings) do |renting|
  json.extract! renting, :id, :name, :cost, :start_date, :end_date, :state, :start_hour, :end_hour, :garage_id
  json.url renting_url(renting, format: :json)
end
