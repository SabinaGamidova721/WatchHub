json.extract! user_history, :id, :user_profile_id, :film_id, :created_at, :updated_at
json.url user_history_url(user_history, format: :json)
