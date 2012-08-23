class MoviesController < ApplicationController
	def index
		@title = "Inception"
		all_movies = Movie.all
		all_movies = all_movies.sort { |a, b| a.title <=> b.title }
		#create arrays for current movies and upcoming movies
		@upcoming_movies = Array.new
		@current_movies = Array.new

		all_movies.each do |movie|
			if movie.release_date > Time.now
				@upcoming_movies << movie
			else
				@current_movies << movie
			end
		end
	end
end
