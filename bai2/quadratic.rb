# Explains to the user what the application does, and how it will work.
puts "This app will quickly calculate the results of a quadratic function and give you the results whether it is calculatable or not."
puts "The function will be calculated in the form of ax^2+bx+c=0."

print "What is the value of constant a?"
var_a = gets.chomp.to_f # Gets the value of constant a from user, and converts it to a float value.

print "What is the value of constant b?"
var_b = gets.chomp.to_f # Gets the value of constant b from user, and converts it to a float value.

print "What is the value of constant c?"
var_c = gets.chomp.to_f # Gets the value of constant c from user, and converts it to a float value.

deltavalue = var_b ** 2 - 4 * var_a * var * c

class Analyze
	def root_calculation  
		# Checks for validity of quadratic function.
		if var_a == 0
			puts "Function invalid. Application will now exit."
			exit!
		else
			if deltavalue.to_f < 0 # Executes if delta is smaller than 0.
				print "There are no real roots for this function. Application will exit."
			elsif deltavalue.to_f == 0 # Executes if delta is equal to 0.
				root0 = -(var_b) / (2 * var_a)
			elsif deltavalue.to_f > 0 # Executes if delta is larger than 0.
				root1 = (-(var_b) + deltavalue) / (2 * var_a)
				root2 = (-(var_b) - deltavalue) / (2 * var_a)
			end
		end
	end

	def rootPrint
		if root0.to_s.empty? = false
			print "The root of the function is: x = " + root0.to_s
		elsif root1.to_s.empty? = false or root2.to_s.empty? = false
			print "The roots to the function are: x1 = " + root1.to_s + " and x2 = " + root2.to_s 
		end
	end
end

result = Analyze.new # Initiate an instance of this class.
result # Executes the functions.
