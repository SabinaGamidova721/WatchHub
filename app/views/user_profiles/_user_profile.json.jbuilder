# frozen_string_literal: true

json.extract! user_profile, :id, :nickname, :date_of_birth, :date_of_registration, :user_id, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
