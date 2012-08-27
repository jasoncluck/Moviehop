class Movie < ActiveRecord::Base
	has_many :pictures
	has_one :trailer
	attr_accessible :title, :rating, :release_date, :tagline
end
