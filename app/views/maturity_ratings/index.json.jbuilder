# frozen_string_literal: true

json.array! @maturity_ratings, partial: "maturity_ratings/maturity_rating", as: :maturity_rating
