# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :country_films, dependent: :destroy
  has_many :films, through: :country_films

  def display_name
    country_name
  end
end
