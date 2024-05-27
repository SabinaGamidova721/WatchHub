class Cast < ApplicationRecord
  belongs_to :role
  has_many :cast_films, dependent: :destroy
  has_many :films, through: :cast_films

  has_one_attached :avatar
end
