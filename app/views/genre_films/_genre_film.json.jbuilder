# frozen_string_literal: true

json.extract! genre_film, :id, :genre_id, :film_id, :created_at, :updated_at
json.url genre_film_url(genre_film, format: :json)
