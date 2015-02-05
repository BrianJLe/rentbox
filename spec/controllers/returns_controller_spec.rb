require 'rails_helper'

RSpec.describe ReturnsController, :type => :controller do

  before do
    @movie = Movie.new(title: 'The Interview', genre: 'Comedy', rating: 8.1, inventory: 'Available')
    @movie.save
  end

  context "success" do
    it "should return a movie" do
    end
  end

  context "failure" do
    it "should not return a movie that isn't reserved" do
    end

    it "should not return with no movies reserved" do
    end

  end

end
