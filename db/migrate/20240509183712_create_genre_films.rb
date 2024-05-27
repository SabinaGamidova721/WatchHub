# frozen_string_literal: true

class CreateGenreFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :genre_films do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
