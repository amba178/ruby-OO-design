require 'date'
require './parts_factory.rb'
require './road_bike_parts'
require './schedulable'

# Bicycle is now resposible for three things:
# Knowing its size, holding onto its parts

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


road_config = [['chain', '10-speed'], ['tire_size', '23'], ['tape_color', 'red']]

mountain_config = [['chain', '10-speed'], ['tire_size', '2.1'], 
                  [' front_shock', 'Manitou', false],['rear_shock', 'Fox']]

road_bike = Bicycle.new( size: 'L', parts: PartsFactory.build(road_config))

puts road_bike.size 
puts road_bike.spares




