require './parts.rb'
require './bicycle.rb'

class Part 
	attr_reader :name, :description, :needs_spare 

	def initialize(args)
		@name = args[:name]
		@description=args[:description]
		@needs_spare =args.fetch(:needs_spare, true)
	end
end


chain = Part.new( name: 'chain', description: '10-speed')
tape = Part.new( name: 'tape_color', description: 'red')
mountain_tire = Part.new( name: 'tire_size', description: '2.1')
rear_shock = Part.new( name: 'rear_shock', description: 'Fox')
front_shock = Part.new( name: 'front_shock', description: 'Manitou', needs_spare: false)

road_bike_parts = Parts.new([chain, front_shock,rear_shock, tape, mountain_tire])

road_bike = Bicycle.new(size: 'L', parts: road_bike_parts)
puts "Size" + "Name".rjust(8) + "Description".rjust(23)

road_bike.spares.select{|part|  puts "#{road_bike_parts.parts.size}".ljust(10) + "#{part.name}".ljust(20) + "#{part.description}" }



