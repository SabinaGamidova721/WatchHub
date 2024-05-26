class Role < ApplicationRecord
  has_many :casts, dependent: :destroy
end
