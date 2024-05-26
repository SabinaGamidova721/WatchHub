class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :slogan
      t.string :link
      t.date :release_year
      t.references :maturity_rating, null: false, foreign_key: true
      t.integer :duration
      t.string :description

      t.timestamps
    end
  end
end
