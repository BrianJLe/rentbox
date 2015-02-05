class RentalsController < ApplicationController
	def new
		@rental = Rental.new
		@movies = Movie.all.select { |m| m.inventory == 'Available'}
		# Prevent movies from being rented if there are none available
		if @movies.empty?
			flash[:alert] = "There are no movies to rent."
			redirect_to movies_path
		end
	end

	def create
		@rental = Rental.new(params[:rental])
		# Check if the movie is available in order to rent
		if @rental.movie.inventory == 'Available'
			if @rental.save
				redirect_to movies_path
			else
				redirect_to new_rental_path
			end
		end
	end

	def index
	end

end
