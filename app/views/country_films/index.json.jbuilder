# frozen_string_literal: true

json.array! @country_films, partial: "country_films/country_film", as: :country_film
