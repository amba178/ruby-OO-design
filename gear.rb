require './wheel'

class Gear 
	attr_reader :chainring, :cog, :wheel#:tire, :rim  

	def initialize(args)
		args = defaults.merge(args)
		@chainring = args[:chainring]
		@cog = args[:cog]
		@wheel = args[:wheel] 
	end

	def ratio
		chainring/cog.to_f 
	end

	#tire goes around rim twice for diameter
	def gear_inches
		ratio * wheel.diameter
	end

	def defaults 
		{:chainring => 40, :cog => 18}
	end

	# def diameter
	# 	rim + (tire*2)
	# end

	# Wheel = Struct.new(:rim, :tire) do 

	# 	def diameter 
	# 		rim + (tire * 2)
	# 	end
	# end

end

@wheel = Wheel.new(26, 1.3)
puts "circumference", @wheel.circumference
puts Gear.new(chainring: 52, cog: 11, :wheel => @wheel).gear_inches