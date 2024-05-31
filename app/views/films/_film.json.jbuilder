# frozen_string_literal: true

json.extract! film, :id, :title, :slogan, :link, :release_year, :maturity_rating_id, :duration, :description,
              :created_at, :updated_at
json.url film_url(film, format: :json)
