require 'forwardable'

class Parts 
	
	extend Forwardable
	def_delegators :@parts, :size, :each 
	include Enumerable 

	def initialize(parts)
		@parts = parts 
	end

	def spares
		select{|part|  part.needs_spare}
	end

	# #subclasses may override
	# def post_initialize(args)
	# 	nil 
	# end

	# def default_chain
	# 	'10-speed'
	# end

	# def default_tire_size
	# 	raise NotImplementedError, "This #{self.class} cannot respond to:"
	# end

	# def local_spares
	# 	{}
	# end

	# def lead_days
	# 	1
	# end

end



