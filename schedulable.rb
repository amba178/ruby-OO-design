
require './schedule.rb'

module Schedulable
	attr_reader :schedule 


	# setter 
	def schedule
		@schedule ||= ::Schedule.new 
	end

	def schedulable?(start_date, end_date)
		puts lead_days
		!scheduled?(start_date - lead_days, end_date)
	end

	def scheduled?(start_date, end_date)
		schedule.scheduled?(self, start_date, end_date)
	end

	def lead_days
		0
	end

end