# Explains to the user what the application does, and how it will work.
puts "This app will quickly calculate the results of a quadratic function and give you the results whether it is calculatable or not."
puts "The function will be calculated in the form of ax^2+bx+c=0."

print "What is the value of constant a?"
var_a = gets.chomp.to_f # Gets the value of constant a from user, and converts it to a float value.

print "What is the value of constant b?"
var_b = gets.chomp.to_f # Gets the value of constant b from user, and converts it to a float value.

print "What is the value of constant c?"
var_c = gets.chomp.to_f # Gets the value of constant c from user, and converts it to a float value.

deltavalue = var_b**2-4*var_a*var*c

class Analyze
	def root_calculation  
		# Checks for validity of quadratic function.
		if var_a == 0
			puts "Function invalid. Application will now exit."
			exit!
		else
			if deltavalue.to_f < 0 # Converting deltavalue variable to a float, and compares it with 0.
				root1 = 
	end

	def rootPrint

	end