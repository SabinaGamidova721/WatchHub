class FilmsQuery
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def results
    scope = Film.includes(:genres, :maturity_rating)
    scope = scope.where('films.title ILIKE ?', "%#{params[:title]}%") if params[:title].present?
    scope = scope.joins(:genres).where(genres: { id: params[:genre_id] }) if params[:genre_id].present?
    scope = scope.where('EXTRACT(YEAR FROM films.release_year) >= ?', params[:min_year]) if params[:min_year].present?
    scope = scope.where('films.duration <= ?', params[:max_duration]) if params[:max_duration].present?
    scope = scope.where(maturity_rating_id: params[:maturity_rating_id]) if params[:maturity_rating_id].present?
    if params[:filter_by] == "year"
      scope.order(release_year: :desc)
    else
      scope.left_joins(:ratings).group(:id).order('AVG(ratings.score) DESC')
    end
  end
end
