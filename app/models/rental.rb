class Rental < ActiveRecord::Base
	belongs_to :movie
	belongs_to :user
	attr_accessible :movie_id, :user_id
	before_save :reserve

	private
	
	def reserve
		if self.movie.inventory == "Available"
			self.movie.mark_as_reserved
		else self.movie.inventory == "Reserved"
			return
		end
	end
end
