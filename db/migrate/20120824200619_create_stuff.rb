class CreateStuff < ActiveRecord::Migration
  def up
  	#create movies
  	create_table 'movies' do |t|
	t.string :title
	t.string :rating
	t.string :tagline
	t.string :showtimes
	t.text :description
	t.datetime :release_date
	#Add fields that let Rails automatically keep track
	#of when movies are added or modified
	t.timestamps
	end
	#create pictures
	create_table :pictures do |t|
  		t.references :movie
  		t.string :address
  		t.text :description

  		t.timestamps
  	end

	#create trailers
	create_table :trailers do |t|
  		t.references :movie
  		t.string :address		#NOTE: NOT THE ACTUAL ADDRESS.  This should be the youtube ID
  		t.text :description

  		t.timestamps
	end
  end		#end up

  def down
  end		#end down
end
