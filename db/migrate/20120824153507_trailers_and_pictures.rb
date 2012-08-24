class TrailersAndPictures < ActiveRecord::Migration
  	def up	
  		#create the table for Trailers
    	create_table :trailers do |t|
  		t.references :movie
  		t.string :address		#NOTE: NOT THE ACTUAL ADDRESS.  This should be the youtube ID
  		t.text :description

  		t.timestamps
  		end
  		#add Trailers and additional pictures for the show - just doing Amelie, Aladdin, and 2001: A Space Odyssey
  		Picture.create!(:movie => Movie.find_by_title("Amelie"), :address => 'http://lossecretosdelaindustria.com/wp-content/uploads/2012/08/amelie-00553.png')
  		Picture.create!(:movie => Movie.find_by_title("Aladdin"), :address => 'http://www.90smovies.net/wp-content/uploads/2012/02/Disney+Aladdin003.jpg')
  		Picture.create!(:movie => Movie.find_by_title("2001: A Space Odyssey"), :address => 'http://i424.photobucket.com/albums/pp330/kivaeeva/2001-a-space-odyssey-7-1024.jpg')
  		Trailer.create!(:movie => Movie.find_by_title("Amelie"), :address => 'HEFrLnS5sQY')
  		Trailer.create!(:movie => Movie.find_by_title("Aladdin"), :address => '_SHlwJmL1jY')
  		Trailer.create!(:movie => Movie.find_by_title("2001: A Space Odyssey"), :address => 'E8TABIFAN4o')
	end

  def down
  	drop_table :trailers
  end
end
