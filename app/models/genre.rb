class Genre < ApplicationRecord
  has_many :genre_films, dependent: :destroy
end