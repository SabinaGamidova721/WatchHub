class Rating < ApplicationRecord
  belongs_to :user_profile
  belongs_to :film

  MAX_RATING = 5
  validates :score, numericality: { in: 0..MAX_RATING }
  
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "film_id", "id", "id_value", "score", "updated_at", "user_profile_id"]
  end
end
