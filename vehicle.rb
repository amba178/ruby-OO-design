require 'date'
require './schedulable'

class Vehicle 
	include Schedulable 

	def lead_days 
		6
	end
end