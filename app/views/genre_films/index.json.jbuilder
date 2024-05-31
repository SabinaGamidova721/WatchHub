# frozen_string_literal: true

json.array! @genre_films, partial: "genre_films/genre_film", as: :genre_film
