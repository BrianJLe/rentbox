class MoviesController < ApplicationController
  def show
  end

  def index
  	@movies = Movie.all
  end
end
