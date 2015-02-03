class Movie < ActiveRecord::Base
	attr_accessible :genre, :inventory, :rating, :title

	def mark_as_reserved
		self.inventory =  "Reserved"
		self.save
	end

	def mark_as_returned
		self.inventory =  "Available"
		self.save
	end
end
