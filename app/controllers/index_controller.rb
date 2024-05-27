class IndexController < ApplicationController

  def home
    @top_rated_films = Film.joins(:ratings).group('films.id').order('AVG(ratings.score) DESC').limit(3)
    @top_ten = Film.limit(10)
    @genres = Genre.includes(:films).all
    @casts = Cast.limit(10)
  end

  private

end