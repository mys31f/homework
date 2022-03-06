puts "This program will print out the multiplication of a number with number from 1 to 10 inclusive"
print "Enter a number: "
number = gets.chomp

(1..10).to_a.each do |x|
	puts "#{number} * #{x} = " + number * x
end