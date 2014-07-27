class MoviesController < ApplicationController 
  def index
    movies = Movie.includes(:type)
    @movie_filter = MovieFilter.new(movies)
  end

  def show
    @movie = Movie.find(params[:id])
    characters = @movie.all_characters
    @character_filter = CharacterFilter.new(characters)
  end
end
