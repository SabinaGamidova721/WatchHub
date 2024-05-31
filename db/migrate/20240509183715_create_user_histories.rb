# frozen_string_literal: true

class CreateUserHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :user_histories do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
