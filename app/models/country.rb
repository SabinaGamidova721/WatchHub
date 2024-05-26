class Country < ApplicationRecord
  has_many :country_films, dependent: :destroy
end
