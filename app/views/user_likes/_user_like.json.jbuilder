# frozen_string_literal: true

json.extract! user_like, :id, :user_profile_id, :film_id, :created_at, :updated_at
json.url user_like_url(user_like, format: :json)
