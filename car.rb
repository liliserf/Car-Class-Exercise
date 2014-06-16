class Car

	def initialize(fuel = 10, distance = 0)
		@fuel = fuel
		@distance = distance
		puts "The initailize method is running automatically"
	end

	def get_info
		"I'm a car! I've driven #{@distance} miles and I have #{@fuel} gallons of gas left."
	end

	def drive(miles)
		if (miles/20.0) < @fuel
			@distance += miles
			@fuel -= (miles/20.0)
			puts "I just drove #{miles}. I have now driven #{@distance} miles and I have #{@fuel} gallons of gas left."
		else
			puts "You sure don't have enough gas for that!"
		end
	end

	def fuel_up
		g = (20 - @fuel)
		i = g * 3.50
		puts "You currently have #{@fuel} gallons of gas. You need #{g} more gallons that will cost $#{i}."			
	end
end

car = Car.new
car.drive(80)
car.drive(40)
car.fuel_up