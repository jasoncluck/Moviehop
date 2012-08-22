class MoviesController < ApplicationController
	def index
		@title = "Inception"
		@movies = Movie.all
	end

	
end
