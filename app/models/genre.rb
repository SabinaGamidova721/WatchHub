# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :genre_films, dependent: :destroy
  has_many :films, through: :genre_films

  def display_name
    title
  end
end
