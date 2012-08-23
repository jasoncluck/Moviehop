class Movie < ActiveRecord::Base
	has_one :pictures
	attr_accessible :title, :rating, :release_date
end
