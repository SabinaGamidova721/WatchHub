# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
