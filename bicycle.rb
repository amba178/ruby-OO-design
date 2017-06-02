# require './schedule'
require 'date'
require './schedulable'

class Bicycle 
	include Schedulable

	attr_reader :size, :chain, :tire_size

	def initialize(args={})
		@size = args[:size]
		@chain = args[:chain] || default_chain 
		@tire_size = args[:tire_size]  || default_tire_size
		post_initialize(args)
	end

	#subclasses may override
	def post_initialize(args)
		nil 
	end

	def default_chain
		'10-speed'
	end

	def default_tire_size
		raise NotImplementedError, "This #{self.class} cannot respond to:"
	end

	def spares
		{tire_size: tire_size,
			chain: chain
		}.merge(local_spares)
	end

	#hook for subclasses to override
	def local_spares
		{}
	end

	# # Return true if this bicycle is available 
	# # during this (now Bicycle) interval.
	# def schedulable?(start_date, end_date)
	# 	!scheduled?(start_date - lead_days, end_date)
	# end

	# def scheduled?(start_date, end_date)
	# 	schedule.scheduled?(self, start_date, end_date)
	# end

	# moved to schedulable module

	def lead_days
		1
	end

end





starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/10")

b = Bicycle.new
puts b.schedulable?(starting, ending)

