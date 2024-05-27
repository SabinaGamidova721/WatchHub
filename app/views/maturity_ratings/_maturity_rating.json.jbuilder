# frozen_string_literal: true

json.extract! maturity_rating, :id, :title, :description, :created_at, :updated_at
json.url maturity_rating_url(maturity_rating, format: :json)
