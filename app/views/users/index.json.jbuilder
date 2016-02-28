json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :auth_code
  json.url user_url(user, format: :json)
end
