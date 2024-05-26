class MaturityRating < ApplicationRecord
  has_many :films, dependent: :destroy
end
