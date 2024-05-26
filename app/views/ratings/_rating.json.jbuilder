json.extract! rating, :id, :user_profile_id, :film_id, :score, :created_at, :updated_at
json.url rating_url(rating, format: :json)
