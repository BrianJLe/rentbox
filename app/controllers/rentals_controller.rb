class RentalsController < ApplicationController
	def new
		@rental = Rental.new
		@movies = Movie.all.select { |m| m.inventory == 'Available'}
	end

	def create
		@rental = Rental.new(params[:rental])
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
