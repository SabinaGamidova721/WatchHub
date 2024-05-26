class CreateMaturityRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :maturity_ratings do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
