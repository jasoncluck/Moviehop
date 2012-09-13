      class Refactor < ActiveRecord::Migration
      
      
      MORE_MOVIES        = [
      {:title            => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/5/58/Aladdinposter.jpg',
      :picture2          => 'http://www.90smovies.net/wp-content/uploads/2012/02/Disney+Aladdin003.jpg', :trailer => '_SHlwJmL1jY'},
      {:title            => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/thumb/7/70/Terminator1984movieposter.jpg/220px-Terminator1984movieposter.jpg',
      :picture2          => 'http://static.nme.com/images/gallery/TheTerminatorGb310311.jpg', :trailer => 'x_-JB8Uut6c'},
      {:title            => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/1/1c/WhenHarryMetSallyPoster.jpg',
      :picture2          => 'http://reeltalk.areavoices.com/files/2011/04/when-harry-met-sally-.jpg', :trailer => 'V8DgDmUHVto'},
      {:title            => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/thumb/b/b5/Help_poster.jpg/215px-Help_poster.jpg'	,
      :picture2          => 'http://3.bp.blogspot.com/-WR8zZHfB_j0/TlT9N7Lq97I/AAAAAAAAHWE/nRibyA2H8c0/s1600/the-help-pic09.jpg', :trailer => 'J_ajv_6pUnI'},
      {:title            => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/thumb/0/08/Chocolat_sheet.jpg/220px-Chocolat_sheet.jpg',
      :picture2          => 'http://www.filmcritic.com/assets_c/2010/02/Chocolat-thumb-560xauto-23590.gif?AMCN', :trailer => 'Az6q4ThqnrA'},
      {:title            => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001', :picture1 => "http://upload.wikimedia.org/wikipedia/en/5/53/Amelie_poster.jpg",
      :picture2          => 'http://lossecretosdelaindustria.com/wp-content/uploads/2012/08/amelie-00553.png', :trailer => 'HEFrLnS5sQY'},
      {:title            => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/0/0b/2001Style_B.jpg',
      :picture2          => 'http://i424.photobucket.com/albums/pp330/kivaeeva/2001-a-space-odyssey-7-1024.jpg', :trailer => 'E8TABIFAN4o'},
      {:title            => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Tiposter.jpg/220px-Tiposter.jpg',
      :picture2          => 'http://www.classesandcareers.com/collegelife/wp-content/uploads/2010/05/the-incredibles-pixar-family.jpg', :trailer => 'JGLVksa4Rww'},
      {:title            => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981', :picture1 => 'http://upload.wikimedia.org/wikipedia/en/4/4b/Raiders.jpg',
      :picture2          => 'http://2.bp.blogspot.com/-THdWFmCkc6w/T_P5gt63n3I/AAAAAAAABlU/U5Vi193ffMM/s1600/raidersofthelostark.jpg', :trailer => '0ZOcoxjeUYo'},
      {:title            => 'Chicken Run', :rating => 'G', :release_date => '21-Jun-2000', :picture1 => 'http://img.movieberry.com/static/photos/1378/poster.jpg', 
      :picture2          => 'http://www.siteoffline.com/images/chicken_run.jpg', :trailer => 'jVdlxwX6A7g'},
      ]
      
      
      
      #add trailers
      #add picture
      
      def up
      #create movies
      create_table 'movies' do |t|
      t.string :title
      t.string :rating
      t.string :tagline
      t.string :showtimes
      t.text :description
      t.string :picture1
      t.string :picture2
      t.string :trailer
      t.datetime :release_date
      #Add fields that let Rails automatically keep track
      #of when movies are added or modified
      t.timestamps
      end
      
      MORE_MOVIES.each do |movie|
      Movie.create!(movie)
      end
      
      movie              = Movie.find_by_title('Amelie')
      movie.tagline      = "Le fabuleux destin d'Amelie Poulain"
      movie.description  = "Amelie, an innocent and naive girl in Paris, with her own sense of justice, 
      decides to help those around her and along the way, discovers love."
      movie.release_date = "25 April 2001"
      movie.save
      
      #add tagline 
      movie              = Movie.find_by_title("Aladdin")
      movie.tagline      = "A diamond in the rough"
      movie.save
      
      movie              = Movie.find_by_title("The Terminator")
      movie.tagline      = "The thing that won't die, in the nightmare that won't end"
      movie.save
      
      movie              = Movie.find_by_title("When Harry Met Sally")
      movie.tagline      = "Can two friends sleep together and still love each other in the morning?"
      movie.save
      
      movie              = Movie.find_by_title("The Help")
      movie.tagline      = "Change begins with a whisper"
      movie.save
      
      movie              = Movie.find_by_title("Chocolat")
      movie.tagline      = "One Taste Is All It Takes"
      movie.save
      
      movie              = Movie.find_by_title("2001: A Space Odyssey")
      movie.tagline      = "The Ultimate Trip"
      movie.save
      
      movie              = Movie.find_by_title("The Incredibles")
      movie.tagline      = "Save The Day"
      movie.save
      
      movie              = Movie.find_by_title("Raiders of the Lost Ark")
      movie.tagline      = "The return of the great adventure"  	
      movie.save
      
      movie              = Movie.find_by_title("Chicken Run")
      movie.tagline      = "Escape or Die Frying"
      movie.save
      
      end
      
      def down
      end
    end
