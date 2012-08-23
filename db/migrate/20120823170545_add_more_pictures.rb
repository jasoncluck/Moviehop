class AddMorePictures < ActiveRecord::Migration
  def up
  	Picture.create!(:movie => Movie.find_by_title("2001: A Space Odyssey"), :address => 'http://upload.wikimedia.org/wikipedia/en/0/0b/2001Style_B.jpg')
  	Picture.create!(:movie => Movie.find_by_title("Chicken Run"), :address => 'http://img.movieberry.com/static/photos/1378/poster.jpg')
	Picture.create!(:movie => Movie.find_by_title("Chocolat"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/0/08/Chocolat_sheet.jpg/220px-Chocolat_sheet.jpg')
	Picture.create!(:movie => Movie.find_by_title("Raiders of the Lost Ark"), :address => 'http://upload.wikimedia.org/wikipedia/en/4/4b/Raiders.jpg')
	Picture.create!(:movie => Movie.find_by_title("The Help"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/b/b5/Help_poster.jpg/215px-Help_poster.jpg')
	Picture.create!(:movie => Movie.find_by_title("The Incredibles"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Tiposter.jpg/220px-Tiposter.jpg')  	
	Picture.create!(:movie => Movie.find_by_title("The Terminator"), :address => 'http://upload.wikimedia.org/wikipedia/en/thumb/7/70/Terminator1984movieposter.jpg/220px-Terminator1984movieposter.jpg')
	Picture.create!(:movie => Movie.find_by_title("When Harry Met Sally"), :address => 'http://upload.wikimedia.org/wikipedia/en/1/1c/WhenHarryMetSallyPoster.jpg')
	

  end
  def down
  	
  end
end
