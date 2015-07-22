class Party < ActiveRecord::Base
	has_many :attendees
	
end