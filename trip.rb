class Trip
	attr_reader :bicycles, :customers, :vehicle

	# this 'mechanic' argument could be of any class

	def prepare(prepareers)
		prepareers.each { |prepare| prepare.prepare_trip(self)}
	end
	# When every prepare is a Duck that respond to prepare_trip
end