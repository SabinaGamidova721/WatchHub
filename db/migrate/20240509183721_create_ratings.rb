# frozen_string_literal: true

class CreateRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true
      t.integer :score, default: 0

      t.timestamps
    end
  end
end
