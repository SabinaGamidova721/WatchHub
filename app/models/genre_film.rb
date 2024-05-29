# frozen_string_literal: true

class GenreFilm < ApplicationRecord
  belongs_to :genre
  belongs_to :film
end
