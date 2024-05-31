# frozen_string_literal: true

class CreateUserProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :user_profiles do |t|
      t.string :nickname
      t.date :date_of_birth
      t.date :date_of_registration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
