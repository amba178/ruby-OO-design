require './parts'
class RoadBikeParts < Parts
	attr_reader :tape_color

	def post_initialize(args)
		@tape_color = args[:tape_color]
		# super(args)
	end


	def default_tire_size
		'23'
	end

	# every bike has the same defaults for
	# tire and chain size

	def local_spares
		{tape_color: tape_color}	
	end
end


