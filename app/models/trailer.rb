class Trailer < ActiveRecord::Base
	belongs_to :movie
	attr_accessible :address, :movie
end
