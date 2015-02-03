class Movie < ActiveRecord::Base
  attr_accessible :genre, :inventory, :rating, :title
end
