puts "gib a number"
input = gets.chomp.to_f

array = Array.new(input.to_s.split(//))
sum = array.sum

if input.include? "." == true
	puts "there are #{input.length.to_i - 1} digits in the number"
	puts "the sum of all the numbers is #{sum}"
elsif input.include? "." == false
	puts "there are #{input.length.to_i} digits in the number"
	puts "the sum of all the numbers is #{sum}"
end