# frozen_string_literal: true

json.extract! user_watch_later, :id, :user_profile_id, :film_id, :created_at, :updated_at
json.url user_watch_later_url(user_watch_later, format: :json)
