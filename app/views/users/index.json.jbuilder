json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :born_at, :admin
  json.url user_url(user, format: :json)
end
