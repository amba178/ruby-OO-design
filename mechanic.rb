class Mechanic 
	def prepare_trip(trip)
		bicycles.each {|bicycle| 
			trip.bicycles.each {
				|bicycle| prepare_bicycle
			}
		}
	end

	def prepare_bicycle(bicycle)
		#
	end
end