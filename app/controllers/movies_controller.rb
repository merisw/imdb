class MoviesController < ApplicationController
  def index
  end

  def show
    search = Imdb::Search.new(params[:title])
    movie_id = search.movies[0].id
    mv = Imdb::Movie.new(movie_id)
    @cast = mv.cast_members[0..5]
  end

end
