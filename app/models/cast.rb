# frozen_string_literal: true

class Cast < ApplicationRecord
  belongs_to :role
  has_many :cast_films, dependent: :destroy

  has_one_attached :avatar
end
