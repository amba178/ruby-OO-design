class Wheel 
	attr_reader :tire, :rim 

	def initialize(tire, rim)
		@tire = tire
		@rim = rim
	end

	def diameter 
		rim + (tire * 2)
    end

    def circumference 
    	diameter * Math::PI 
    end
end

