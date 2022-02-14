puts "This app will calculate the result of a simple ax+b=0 function."
puts "What's the value of the constant a?"
print "Enter value: "
	var_a = gets.chomp
puts "What's the value of the constant b?"
print "Enter value: "
	var_b = gets.chomp

if var_a == 0
	print "There are no real values of x that satisfy this equation."
else
	root = -(var_b)/var_a
	print "The value of x is x = " + root.to_s 
end