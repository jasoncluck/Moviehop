class Trailer < ActiveRecord::Base
	has_one :movie
	attr_accessible :address, :movie
end
