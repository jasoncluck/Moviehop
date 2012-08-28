class MoviesController < ApplicationController
	
	before_filter :setup
	#before filter for tMDB key auth
	#before_filter :require_tMDB_key

	def setup
		all_movies = Movie.all
		all_movies = all_movies.sort { |a, b| a.title <=> b.title }

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
	end

	#view the list of current movies and have option to add or edit
	#def view

	#end

	#add a new movie
	def new		
		@movie = Movie.new
	end

	#edit an existing movie
	def edit
		@movie = Movie.find_by_id(id)
	end

	def create
	    @movie = Movie.new(params[:movie])

	    if @movie.save
	    	flash[:notice] = "#{@movie.title} was successfully created."
	    	#link the trailers and pictures to the movie's table
			  redirect_to @movie
	    else
		    render :action => 'new'	   
	    	redirect_to @movie
	  	end
 	end


	#def require_tMDB_key
	#end
end