class AddPictures < ActiveRecord::Migration
  def up
  	Picture.create!(:movie => Movie.find_by_title("Amelie"), :address => 'http://upload.wikimedia.org/wikipedia/en/5/53/Amelie_poster.jpg')
  	Picture.create!(:movie => Movie.find_by_title("Aladdin"), :address => 'http://upload.wikimedia.org/wikipedia/en/5/58/Aladdinposter.jpg')
  	
  end
  def down
  	Picture.find(1).destroy
  	Picture.find(2).destroy
  end
end
