class Movie < ActiveRecord::Base
	attr_accessible :genre, :inventory, :rating, :title

	def self.search(search)
		if search && search.length > 0
			search_condition = "%" + search + "%"
			find(:all, :conditions => ['title ILIKE ?',search_condition])
		end
	end

	def mark_as_reserved
		self.inventory =  "Reserved"
		self.save
	end

	def mark_as_returned
		self.inventory =  "Available"
		self.save
	end
end
