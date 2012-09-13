class AddShowtimesToMovies < ActiveRecord::Migration
  def change
    	movie              = Movie.find_by_title("Aladdin")
      	movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
	  	movie.save
		  
		  movie              = Movie.find_by_title("The Terminator")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
		  movie.save
		  
		  movie              = Movie.find_by_title("When Harry Met Sally")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
		  movie.save
		  
		  movie              = Movie.find_by_title("The Help")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
		  movie.save
		  
		  movie              = Movie.find_by_title("Chocolat")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
		  movie.save
		  
		  movie              = Movie.find_by_title("The Incredibles")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
		  movie.save
		  
		  movie              = Movie.find_by_title("Raiders of the Lost Ark")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"  	
		  movie.save
		  
		  movie              = Movie.find_by_title("Chicken Run")
		  movie.showtimes      = "1:00, 3:00, 5:00, 7:00, 9:00"
		  movie.save
  end
end
