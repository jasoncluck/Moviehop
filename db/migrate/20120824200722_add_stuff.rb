class AddStuff < ActiveRecord::Migration
  	MORE_MOVIES = [
    {:title => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992'},
    {:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984'},
    {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'},
    {:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011'},
    {:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001'},
    {:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001'},
    {:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968'},
    {:title => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004'},
    {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981'},
    {:title => 'Chicken Run', :rating => 'G', :release_date => '21-Jun-2000'},
  ]
  def up

    MORE_MOVIES.each do |movie|
      Movie.create!(movie)
    end

	Picture.create!(:movie => Movie.find_by_title("Amelie"), :address => 'http://upload.wikimedia.org/wikipedia/en/5/53/Amelie_poster.jpg')
	Picture.create!(:movie => Movie.find_by_title("Aladdin"), :address => 'http://upload.wikimedia.org/wikipedia/en/5/58/Aladdinposter.jpg')

	Picture.create!(:movie => Movie.find_by_title("2001: A Space Odyssey"), :address => 'http://upload.wikimedia.org/wikipedia/en/0/0b/2001Style_B.jpg')
	Picture.create!(:movie => Movie.find_by_title("Chicken Run"), :address => 'http://img.movieberry.com/static/photos/1378/poster.jpg')
	Picture.create!(:movie => Movie.find_by_title("Chocolat"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/0/08/Chocolat_sheet.jpg/220px-Chocolat_sheet.jpg')
	Picture.create!(:movie => Movie.find_by_title("Raiders of the Lost Ark"), :address => 'http://upload.wikimedia.org/wikipedia/en/4/4b/Raiders.jpg')
	Picture.create!(:movie => Movie.find_by_title("The Help"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/b/b5/Help_poster.jpg/215px-Help_poster.jpg')
	Picture.create!(:movie => Movie.find_by_title("The Incredibles"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Tiposter.jpg/220px-Tiposter.jpg')  	
	Picture.create!(:movie => Movie.find_by_title("The Terminator"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/7/70/Terminator1984movieposter.jpg/220px-Terminator1984movieposter.jpg')
	Picture.create!(:movie => Movie.find_by_title("When Harry Met Sally"), :address => 'http://upload.wikimedia.org/wikipedia/en/1/1c/WhenHarryMetSallyPoster.jpg')
	

  	#add Trailers and additional pictures for the show - just doing Amelie, Aladdin, and 2001: A Space Odyssey
	Picture.create!(:movie => Movie.find_by_title("Amelie"), :address => 'http://lossecretosdelaindustria.com/wp-content/uploads/2012/08/amelie-00553.png')
	Picture.create!(:movie => Movie.find_by_title("Aladdin"), :address => 'http://www.90smovies.net/wp-content/uploads/2012/02/Disney+Aladdin003.jpg')
	Picture.create!(:movie => Movie.find_by_title("2001: A Space Odyssey"), :address => 'http://i424.photobucket.com/albums/pp330/kivaeeva/2001-a-space-odyssey-7-1024.jpg')
	Trailer.create!(:movie => Movie.find_by_title("Amelie"), :address => 'HEFrLnS5sQY')
	Trailer.create!(:movie => Movie.find_by_title("Aladdin"), :address => '_SHlwJmL1jY')
	Trailer.create!(:movie => Movie.find_by_title("2001: A Space Odyssey"), :address => 'E8TABIFAN4o')

  end

  def down
  end
end
