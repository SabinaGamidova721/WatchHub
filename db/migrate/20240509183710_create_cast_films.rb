# frozen_string_literal: true

class CreateCastFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :cast_films do |t|
      t.references :cast, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
