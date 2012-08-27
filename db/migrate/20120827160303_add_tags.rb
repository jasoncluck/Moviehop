class AddTags < ActiveRecord::Migration
  def up
  	#add taglines 
  	movie = Movie.find_by_title("Aladdin")
  	movie.tagline = "A diamond in the rough"
  	movie.save

	movie = Movie.find_by_title("The Terminator")
  	movie.tagline = "The thing that won't die, in the nightmare that won't end"
  	movie.save

	movie = Movie.find_by_title("When Harry Met Sally")
  	movie.tagline = "Can two friends sleep together and still love each other in the morning?"
  	movie.save

	movie = Movie.find_by_title("The Help")
  	movie.tagline = "Change begins with a whisper"
  	movie.save

	movie = Movie.find_by_title("Chocolat")
  	movie.tagline = "One Taste Is All It Takes"
  	movie.save

	movie = Movie.find_by_title("2001: A Space Odyssey")
  	movie.tagline = "The Ultimate Trip"
  	movie.save

	movie = Movie.find_by_title("The Incredibles")
  	movie.tagline = "Save The Day"
  	movie.save

	movie = Movie.find_by_title("Raiders of the Lost Ark")
  	movie.tagline = "The return of the great adventure"  	
  	movie.save

  	movie = Movie.find_by_title("Chicken Run")
  	movie.tagline = "Escape or Die Frying"
  	movie.save
  end

  def down

  end
end
