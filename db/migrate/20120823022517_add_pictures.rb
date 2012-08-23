class AddPictures < ActiveRecord::Migration
  MORE_PICTURES = [
    {:movie_title => 'Amelie', :url => 'http://upload.wikimedia.org/wikipedia/en/5/53/Amelie_poster.jpg'},
    {:movie_title => '2001: A Space Odyssey', :url => 'http://upload.wikimedia.org/wikipedia/en/0/0b/2001Style_B.jpg'},
    {:movie_title => 'Aladdin', :url => 'http://upload.wikimedia.org/wikipedia/en/5/58/Aladdinposter.jpg'},
    ]
  def up
    MORE_PICTURES.each do |picture|
      Picture.create!(picture)
    end
  end

  def down
    MORE_PICTURES.each do |picture|
      Picture.find_by_movie_title_and_url(picture[:movie_title], picture[:url]).destroy
    end
  end
end