class Movie < ActiveRecord::Base

	attr_accessible :title, :rating, :release_date, :tagline, :trailer, :picture1, :picture2

	
end
