json.extract! user, :id, :username, :password, :unit, :created_at, :updated_at
json.url user_url(user, format: :json)