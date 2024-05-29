# frozen_string_literal: true

class UserLike < ApplicationRecord
  belongs_to :user_profile
  belongs_to :film

  def self.ransackable_attributes(_auth_object=nil)
    %w[created_at film_id id id_value updated_at user_profile_id]
  end
end
