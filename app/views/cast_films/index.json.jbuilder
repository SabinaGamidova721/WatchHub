# frozen_string_literal: true

json.array! @cast_films, partial: "cast_films/cast_film", as: :cast_film
