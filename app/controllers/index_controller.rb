# frozen_string_literal: true

class IndexController < ApplicationController
  before_action :authenticate_user!, only: [:home]
  def home
    set_current_user
    @top_ten = Film.left_joins(:ratings)
                   .group("films.id")
                   .order(Arel.sql("COALESCE(AVG(ratings.score), 0) DESC, COUNT(ratings.id) DESC"))
                   .limit(10)
    @top_rated_films = @top_ten.limit(3)
    @genres = Genre.includes(:films).all
    @casts = Cast.order("RANDOM()").limit(15)
  end

  def startpage; end

  private

  def set_current_user
    return unless session[:user_id]

    @set_current_user ||= User.find(session[:user_id])
  end
end
