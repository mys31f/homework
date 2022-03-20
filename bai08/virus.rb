puts "A virus has spread throughout the city."
puts "It is known that this virus doubles every day."
puts "This will calculate the time until there are 1 billion entities."
puts "How many initial entities are there?"
print "Number of initial entities: "
entities = gets.chomp.to_i

until entities >= 1000000000
	finalvalue = entities * 2
end

days = Math.log(finalvalue / entities, 2)
puts "In #{days}, there will be 1 billion entities."