class CreatePictures < ActiveRecord::Migration
  def up
  	create_table 'pictures' do |t|
  		t.string 'movie_title'
  		t.string 'url'
  		t.text 'description'

  		t.timestamps
  	end
  end

  def down
  	drop_table 'pictures' #deltes the whole table and all of its data!
  end
end
