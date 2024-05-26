class CountryFilm < ApplicationRecord
  belongs_to :country
  belongs_to :film
end
