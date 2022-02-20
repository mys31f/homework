puts "This application will check whether 3 random numbers create a triangle. If they do, this will calculate the perimeter and the area of the triangle."

print "What's the first number? " 
	var_a = gets.chomp.to_f # Takes in the first value and converts it to a float.

print "What's the second number? "
	var_b = gets.chomp.to_f # Takes in the second value and converts it to a float.

print "What's the last number? "
	var_c = gets.chomp.to_f # Takes in the third value and converts it to a float.

class Analyze
	def valid?(value1, value2, value3)
		value1 + value2 > value3 and value1 + value3 > value2 and value2 + value3 > value1 and value1 > 0 and value2 > 0 and value3 > 0 # This condition is long as motherfucking shit.
	end

	def perimeter(value1, value2, value3)
		value1 + value2 + value3 # Calculates the perimeter
	end

	def area(value1, value2, value3)
		@halfperimeter = (value1 + value2 + value3) / 2 # Half the perimeter for use in Heron's formula
		@areasquared = @halfperimeter * (@halfperimeter - value1) * (@halfperimeter - value2) * (@halfperimeter - value3)
		return Math.sqrt(@areasquared)
	end
end

start = Analyze.new
checking = start.valid?(var_a, var_b, var_c)
perim = start.perimeter(var_a, var_b, var_c)
area = start.area(var_a, var_b, var_c)

if checking == true
	puts "The perimeter of the triangle is #{perim} units and the area of the triangle is #{area} square units."
else
	puts "The values do not create a triangle. Exiting."
end