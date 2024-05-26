class GenreFilmsController < ApplicationController
  before_action :set_genre_film, only: %i[ show edit update destroy ]

  # GET /genre_films or /genre_films.json
  def index
    @genre_films = GenreFilm.all
  end

  # GET /genre_films/1 or /genre_films/1.json
  def show
  end

  # GET /genre_films/new
  def new
    @genre_film = GenreFilm.new
  end

  # GET /genre_films/1/edit
  def edit
  end

  # POST /genre_films or /genre_films.json
  def create
    @genre_film = GenreFilm.new(genre_film_params)

    respond_to do |format|
      if @genre_film.save
        format.html { redirect_to genre_film_url(@genre_film), notice: "Genre film was successfully created." }
        format.json { render :show, status: :created, location: @genre_film }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genre_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_films/1 or /genre_films/1.json
  def update
    respond_to do |format|
      if @genre_film.update(genre_film_params)
        format.html { redirect_to genre_film_url(@genre_film), notice: "Genre film was successfully updated." }
        format.json { render :show, status: :ok, location: @genre_film }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genre_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_films/1 or /genre_films/1.json
  def destroy
    @genre_film.destroy!

    respond_to do |format|
      format.html { redirect_to genre_films_url, notice: "Genre film was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_film
      @genre_film = GenreFilm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genre_film_params
      params.require(:genre_film).permit(:genre_id, :film_id)
    end
end
