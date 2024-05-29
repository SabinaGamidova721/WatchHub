# frozen_string_literal: true

class User < ApplicationRecord
  has_one :user_profile, dependent: :destroy, inverse_of: :user

  # accepts_nested_attributes_for :user_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
