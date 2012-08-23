class Picture < ActiveRecord::Base
	belongs_to :movie
	attr_accessible :movie_title, :url
end
