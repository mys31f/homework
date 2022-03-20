puts "This app will quickly calculate the roots of a quadratic function."
puts "The function will be calculated in the form of ax^2+bx+c=0."

print "What's the value of a? "
	var_a = gets.chomp.to_f
print "What's the value of b? "
	var_b = gets.chomp.to_f 
print "What's the value of c? "
	var_c = gets.chomp.to_f 

deltavalue = (var_b ** 2) - (4 * var_a * var_c)


class Analyze
	def valid?(value)
		value != 0
	end

	def duplicate?(value1, value2)
		value1 == value2
	end

	def deltatrue?(value)
		value >= 0
	end
end

checking = Analyze.new

if checking.valid?(var_a) == true and checking.deltatrue?(deltavalue) == true
	root1 = ((- var_b + Math.sqrt(deltavalue.to_f)) / (2 * var_a))
	root2 = ((- var_b - Math.sqrt(deltavalue.to_f)) / (2 * var_a))
	if checking.duplicate?(root1, root2) == true
		puts "The root of this function is x = #{root1}."
	else
		puts "The roots of this function are x1 = #{root1} and x2 = #{root2}."
	end
else
	puts "Function invalid. Exiting."
end