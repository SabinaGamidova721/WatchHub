# frozen_string_literal: true

class UserProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy, inverse_of: :user_profile
  has_many :user_histories, dependent: :destroy
  has_many :user_watch_laters, dependent: :destroy
  has_many :user_likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :nickname, presence: true
  validates :date_of_birth, presence: true
  validates :date_of_registration, presence: true

  has_one_attached :avatar

  accepts_nested_attributes_for :user

  def self.ransackable_associations(_auth_object=nil)
    %w[avatar_attachment avatar_blob comments ratings user user_histories user_likes
       user_watch_laters]
  end

  def self.ransackable_attributes(_auth_object=nil)
    %w[created_at date_of_birth date_of_registration id id_value nickname updated_at user_id]
  end
end
