json.array!(@profiles) do |profile|
  json.extract! profile, :id, :email, :Type_profiles, :name, :Documento, :addr_user, :phone, :user_id, :type_user_id, :district_id
  json.url profile_url(profile, format: :json)
end
