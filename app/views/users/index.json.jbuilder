json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :content, :posted_at
  json.url user_url(user, format: :json)
end
