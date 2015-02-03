class Return < ActiveRecord::Base
	attr_accessible :movie_id, :user_id

	belongs_to :movie
	belongs_to :user

	before_save :checkin

	private
	def checkin
		if self.movie.inventory == "Reserved"
			self.movie.mark_as_returned
		else self.movie.inventory == "Available"
			return
		end
	end
end
