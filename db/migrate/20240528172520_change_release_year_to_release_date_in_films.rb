class ChangeReleaseYearToReleaseDateInFilms < ActiveRecord::Migration[7.1]
  def change
    rename_column :films, :release_year, :release_date
  end
end
