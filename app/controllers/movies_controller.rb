class MoviesController < ApplicationController
	helper_method :sort_column, :sort_direction

	def show
		@movie = Movie.find(params[:id])
	end

	def index
		if params[:search] && params[:search].length > 0
			@movies = Movie.search(params[:search])
		else
			@movies = Movie.order(sort_column + " " + sort_direction)
		end
	end

	private

	def sort_column
		Movie.column_names.include?(params[:sort]) ? params[:sort] : "title"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	end
end
