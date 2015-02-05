class RentalsController < ApplicationController
	def new
		@rental = Rental.new
		@movies = Movie.all.select { |m| m.inventory == 'Available'}
		if @movies.empty?
			flash[:alert] = "There are no movies to rent."
			redirect_to movies_path
		end
	end

	def create
		@rental = Rental.new(params[:rental])
		Rails.logger.info("TO: #{params.inspect}")
		Rails.logger.info("YO: #{@rental.inspect}")
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
