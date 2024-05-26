class Film < ApplicationRecord
  belongs_to :maturity_rating

  has_many :user_histories, dependent: :destroy
  has_many :user_watch_laters, dependent: :destroy
  has_many :user_likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy

  has_many :cast_films, dependent: :destroy
  has_many :country_films, dependent: :destroy
  has_many :genre_films, dependent: :destroy

  has_one_attached :avatar
end
