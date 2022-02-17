# Explains to user what the application will do.

puts "This application will check whether 3 random numbers create a triangle. If they do, this will calculate the perimeter and the area of the triangle."

print "What's the first number? " 
	var_a = gets.chomp.to_f # Takes in the first value and converts it to a float.

print "What's the second number? "
	var_b = gets.chomp.to_f # Takes in the second value and converts it to a float.

print "What's the last number? "
	var_c = gets.chomp.to_f # Takes in the third value and converts it to a float.

class Verify
	@@validation1 = var_a + var_b > var_c # Validates with the triangle inequalities.
	@@validation2 = var_a + var_c > var_b
	@@validation3 = var_b + var_c > var_a 

	def Validate
		if @@validation1 == false or @@validation2 == false or @@validation3 == false # Checks in a long-ass fucking conditional. Why am I doing it like this again? Is there some way to shorten it? How do I even refactor this thing?
			print "These numbers do not create a triangle."
			exit!	
		else
			Calculate.new # This class instance will be defined underneath.
		end
	end
end

class Calculate
	@@perimeter = var_a + var_b + var_c # Normal perimeter function.
	@@heronsquare = (@@perimeter / 2) * ((@@perimeter / 2) - var_a) * ((@@perimeter / 2) - var_b) * ((@@perimeter / 2) - var_c)
	@@trianglearea = Math.sqrt(@@heronsquare) # Calculates the area using Heron's formula.

	def Result
		puts "The perimeter of this triangle is #{@@perimeter} (units)."
		print "The area of this triangle is #{@@trianglearea} (units squared)." # Prints out the results of the calculations.
	end
end

startapp = Verify.new # Execute an instance of the class Verify.
startapp
