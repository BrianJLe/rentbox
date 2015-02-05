class ReturnsController < ApplicationController
	def new
		@return = Return.new
		@movies = Movie.all.select { |m| m.inventory == 'Reserved'}
		if @movies.empty?
			flash[:alert] = "There are no movies to return."
			redirect_to movies_path
		end
	end

	def create
		@return = Return.new(params[:return])
		if @return.movie.inventory == 'Reserved'
			if @return.save
				redirect_to movies_path
			else
				redirect_to new_return_path
			end
		end
	end

	def index
	end

end
