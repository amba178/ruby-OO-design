# require './schedule'
require 'date'
require './road_bike_parts'
require './schedulable'


# Bicycle is now resposible for three things:
# Knowing its size, holding onto its parts
# 

class Bicycle 
	include Schedulable

	attr_reader :size, :parts


	def initialize(args={})
		@size = args[:size]
		@parts = args[:parts]
	end

	def spares
		parts.spares
	end

end

# road_bike = Bicycle.new( size: 'L', parts: RoadBikeParts.new(tape_color: 'red'))

# puts road_bike.size 
# puts "Local spares", road_bike.spares, "salem" 




