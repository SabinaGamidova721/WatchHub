# frozen_string_literal: true

class Cast < ApplicationRecord
  belongs_to :role
  has_many :cast_films, dependent: :destroy
  has_many :films, through: :cast_films

  has_one_attached :avatar

  def display_name
    "#{first_name} #{last_name}"
  end
end
