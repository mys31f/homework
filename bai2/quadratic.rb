puts "This app will quickly calculate the roots of a quadratic function."
puts "The function will be calculated in the form of ax^2+bx+c=0."

print "What's the value of a? "
	@var_a = gets.chomp.to_f
print "What's the value of b? "
	@var_b = gets.chomp.to_f 
print "What's the value of c? "
	@var_c = gets.chomp.to_f 

class Analyze
	def valid?
		@var_a != 0
	end
end

checking = Analyze.new
print "#{checking.valid?}"