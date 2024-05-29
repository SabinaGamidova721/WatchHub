# frozen_string_literal: true

class CreateCountryFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :country_films do |t|
      t.references :country, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
