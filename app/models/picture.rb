class Picture < ActiveRecord::Base
	belongs_to :movie
	#allow access of url through movies objec
	attr_accessible :address, :movie

end
