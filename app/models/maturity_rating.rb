# frozen_string_literal: true

class MaturityRating < ApplicationRecord
  has_many :films, dependent: :destroy
end
