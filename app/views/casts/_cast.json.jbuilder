# frozen_string_literal: true

json.extract! cast, :id, :first_name, :last_name, :date_of_birth, :description, :role_id, :created_at, :updated_at
json.url cast_url(cast, format: :json)
