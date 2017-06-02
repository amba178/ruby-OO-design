require './bicycle.rb'
class RoadBike < Bicycle
	attr_reader :tape_color

	def initialize(args)
		@tape_color = args[:tape_color]
		super(args)
	end


	def default_tire_size
		'23'
	end

	# every bike has the same defaults for
	# tire and chain size

	def spares
		
			{
				chain: '10-speed',
				tire_size: '23',
				tape_color: tape_color
			}
		
	end
end

road_bike = RoadBike.new( size: 'M', tape_color: 'red')

puts road_bike.tire_size 
# puts bike.spares 