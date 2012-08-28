class Movie < ActiveRecord::Base

	attr_accessible :title, :rating, :release_date, :tagline, :trailer, :picture1, :picture2
	validates_presence_of :trailer, :picture1, :picture2, :title
	validates_uniqueness_of :title
 	
end
