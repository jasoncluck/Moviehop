class Movie < ActiveRecord::Base
	has_many :pictures
	attr_accessible :title, :rating, :release_date
end
