class UserWatchLater < ApplicationRecord
  belongs_to :user_profile
  belongs_to :film

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "film_id", "id", "id_value", "updated_at", "user_profile_id"]
  end
end
