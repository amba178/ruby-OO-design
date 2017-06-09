class Parts 
	attr_reader :chain, :tire_size 

	def initialize(args={})
		@chain = args[:chain] || default_chain
		@tire_size = args[:tire_size] || default_tire_size 
		post_initialize(args)
	end

	def spares
		{
			tire_size: tire_size,
			chain: chain
		}.merge(local_spares)
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

	def local_spares
		{}
	end

	def lead_days
		1
	end

end