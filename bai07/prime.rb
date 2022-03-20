puts "This will check whether a given number is prime."
print "Give a number: "
input = gets.chomp.to_i
condition = Math.sqrt(input)
int = 2

while int < condition 
	rem = input % int 
	if rem == 0
		1.times {puts "non"}
		break
	else
		int += 1
	end
end

if int > condition and rem != 0
	puts "oui"
end
