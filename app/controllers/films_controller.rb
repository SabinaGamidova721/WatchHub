# frozen_string_literal: true
class FilmsController < ApplicationController
  before_action :set_film, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /films or /films.json
  def index
    @query = FilmsQuery.new(films_params)
    @films = @query.results
    @genres = Genre.all
    @maturity_ratings = MaturityRating.all
  end

  # GET /films/1 or /films/1.json
  def show
    @rating = Rating.find_or_create_by(film_id: @film.id, user_profile_id: session[:user_id]) do |rating|
      rating.score = 0
    end

    @comment = Comment.new
    @comments = Comment.where(film_id: @film.id).order(created_at: :desc)

    @genres = @film.genres
    @genre_titles = @genres.map(&:title)

    @countries = @film.countries

    @actors = cast_by_role(@film.id, 'Actor')
    @directors = cast_by_role(@film.id, 'Film director')
    
    UserHistory.find_or_create_by(film_id: @film.id, user_profile_id: session[:user_id])
  end

  def cast_by_role(film_id, role_title)
    Cast.joins(:cast_films, :role).where('cast_films.film_id' => film_id, 'roles.title' => role_title)
  end

  # GET /films/new
  def new
    @film = Film.new
  end

  # GET /films/1/edit
  def edit
  end

  # POST /films or /films.json
  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        
        rating = Rating.new
        rating.user_profile_id = session[:user_id]
        rating.film_id = @film.id
        rating.score = 0
        rating.save

        format.html { redirect_to film_url(@film), notice: "Film was successfully created." }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /films/1 or /films/1.json
  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to film_url(@film), notice: "Film was successfully updated." }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1 or /films/1.json
  def destroy
    @film.destroy!

    respond_to do |format|
      format.html { redirect_to films_url, notice: "Film was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def film_params
      params.require(:film).permit(:title, :slogan, :link, :release_date, :maturity_rating_id, :duration, :description, :avatar)
    end

    def films_params
      params.permit(:title, :genre_id, :min_year, :max_duration, :maturity_rating_id, :filter_by)
    end
end

