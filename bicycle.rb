# require './schedule'
require 'date'
require './schedulable'

class Bicycle 
	include Schedulable

	attr_reader :size, :parts

	def initialize(args={})
		@size = args[:size]
		@parts = args[:parts]
	end

	def spares
		parts.spares
	end

end





starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/10")

b = Bicycle.new
puts b.schedulable?(starting, ending)

