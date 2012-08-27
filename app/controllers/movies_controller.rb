class MoviesController < ApplicationController
	
	before_filter :setup
	#before filter for tMDB key auth
	before_filter :require_tMDB_key

	def setup
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

	def index
		
	end

	#once a user clicks on a particular movie
	def show
		id = params[:id];				#get the movie id
		@movie = Movie.find_by_id(id) 	#get the movie from the database

		#get the pictures and the trailers for this particular movie
		@pictures = Array.new 
		#@trailers = Array.new 

		Picture.all.each do |picture|
			if @movie.id == picture.movie_id
				@pictures << picture
			end
		end
		@pictures = @pictures.last
		#currently only 1 trailer should be assigned to a movie
		Trailer.all.each do |trailer|
			if @movie.id == trailer.movie_id
				@trailers = trailer
			end
		end

	end

	#view the list of current movies and have option to add or edit
	def view

	end

	#add a new movie
	def new

	end

	#edit an existing movie
	def edit

	end


	def require_tMDB_key

	end

end
