puts "A virus has spread throughout the city."
puts "It is known that this virus doubles every day."
puts "This will calculate the time until there are 1 billion entities."
puts "How many initial entities are there?"
print "Number of initial entities: "
entities = gets.chomp.to_i
puts "In #{Math.log(1000000000,entities)} days, there will be 1 billion entities."