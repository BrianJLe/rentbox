require 'rails_helper'

RSpec.describe RentalsController, :type => :controller do

  before do
    @movie = Movie.new(title: 'Big Hero 6', genre: 'Family', rating: 9.1, inventory: 'Available')
    @movie.save
  end
  context "success" do

    it "should rent the movie" do
    end
  end

  content "failure" do
    it "should not rent movies that are reserved" do
    end

    it "should not rent with no available movies"
  end
end