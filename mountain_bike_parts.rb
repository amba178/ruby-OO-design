#!/usr/local/bin/ruby -w
require './parts.rb'

class MountainBikeParts < Parts
	attr_reader :front_shock, :rear_shock 


	def post_initialize(args)
		@front_shock = args[:front_shock]
		@rear_shock = args[:rear_shock]
		super(args)
	end

	def default_tire_size
		'2.1'
	end

	def spares
		super.merge(rear_shock: rear_shock)
	end
end


mountain_bike = MountainBike.new(size: 'S', front_shock: 'Manitou', rear_shock: "fox")

puts mountain_bike.spares 



