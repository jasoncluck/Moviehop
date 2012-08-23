class MoviesController < ApplicationController
	#before filter for tMDB key auth
	before_filter :require_tMDB_key

	def index
		all_movies = Movie.all
		all_movies = all_movies.sort { |a, b| a.title <=> b.title }

		@pictures = Picture.all
		
		#create arrays for current movies and upcoming movies
		@upcoming_movies = Array.new
		@current_movies = Array.new

		#sort movies into current and upcoming release arrays
		all_movies.each do |movie|
			if movie.release_date > Time.now
				@upcoming_movies << movie
			else
				@current_movies << movie
			end
		end
	end

	#once a user clicks on a particular movie
	def show
		params = params[:id];		#get the movie id
		movie = Movie.find_by_id(params) 	#get the movie from the database


	end


	def require_tMDB_key

	end

end
