json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :mail
  json.url user_url(user, format: :json)
end
