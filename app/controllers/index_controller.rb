class IndexController < ApplicationController

  def home
    current_user = set_current_user
    @top_rated_films = Film.joins(:ratings).group('films.id').order('AVG(ratings.score) DESC').limit(3)
    @top_ten = Film.limit(10)
    @genres = Genre.includes(:films).all
    @casts = Cast.limit(10)
  end

  def startpage
  end

  private

  def set_current_user
      return unless session[:user_id]
      @current_user ||= User.find(session[:user_id])
  end

end