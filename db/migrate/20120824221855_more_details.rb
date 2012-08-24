class MoreDetails < ActiveRecord::Migration
  def up
    movie = Movie.find_by_title('Amelie')
    movie.tagline = "Le fabuleux destin d'Amelie Poulain"
    movie.description = "Amelie, an innocent and naive girl in Paris, with her own sense of justice, 
    decides to help those around her and along the way, discovers love."
    movie.release_date = "25 April 2001"

    #add trailers
    Trailer.create!(:movie => Movie.find_by_title("Chicken Run"), :address => 'jVdlxwX6A7g')
    Trailer.create!(:movie => Movie.find_by_title("Chocolat"), :address => 'Az6q4ThqnrA')
    Trailer.create!(:movie => Movie.find_by_title("Raiders of the Lost Ark"), :address => '0ZOcoxjeUYo')
    Trailer.create!(:movie => Movie.find_by_title("The Help"), :address => 'J_ajv_6pUnI')
    Trailer.create!(:movie => Movie.find_by_title("The Incredibles"), :address => 'JGLVksa4Rww')
    Trailer.create!(:movie => Movie.find_by_title("The Terminator"), :address => 'x_-JB8Uut6c')
    Trailer.create!(:movie => Movie.find_by_title("When Harry Met Sally"), :address => 'V8DgDmUHVto')

    #add picture
	Picture.create!(:movie => Movie.find_by_title("Chicken Run"), :address => 'http://www.siteoffline.com/images/chicken_run.jpg')
    Picture.create!(:movie => Movie.find_by_title("Chocolat"), :address => 'http://www.filmcritic.com/assets_c/2010/02/Chocolat-thumb-560xauto-23590.gif?AMCN')
    Picture.create!(:movie => Movie.find_by_title("Raiders of the Lost Ark"), :address => 'http://2.bp.blogspot.com/-THdWFmCkc6w/T_P5gt63n3I/AAAAAAAABlU/U5Vi193ffMM/s1600/raidersofthelostark.jpg')
    Picture.create!(:movie => Movie.find_by_title("The Help"), :address => 'http://3.bp.blogspot.com/-WR8zZHfB_j0/TlT9N7Lq97I/AAAAAAAAHWE/nRibyA2H8c0/s1600/the-help-pic09.jpg')
    Picture.create!(:movie => Movie.find_by_title("The Incredibles"), :address => 'http://www.classesandcareers.com/collegelife/wp-content/uploads/2010/05/the-incredibles-pixar-family.jpg')
    Picture.create!(:movie => Movie.find_by_title("The Terminator"), :address => 'x_-http://moviewatchersguide.files.wordpress.com/2012/01/terminator.jpg')
    Picture.create!(:movie => Movie.find_by_title("When Harry Met Sally"), :address => 'http://reeltalk.areavoices.com/files/2011/04/when-harry-met-sally-.jpg')


  end

  def down
  end
end
