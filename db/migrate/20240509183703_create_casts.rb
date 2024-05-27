# frozen_string_literal: true

class CreateCasts < ActiveRecord::Migration[7.1]
  def change
    create_table :casts do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :description
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
