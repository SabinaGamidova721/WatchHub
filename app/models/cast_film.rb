# frozen_string_literal: true

class CastFilm < ApplicationRecord
  belongs_to :cast
  belongs_to :film
end
