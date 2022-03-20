print("A virus has spread throughout the city.\n")
print("It is known that this virus doubles every day.\n")
print("This will calculate the time until there are 1 billion entities.\n")
print("How many initial entities are there?\n")
entities = int(input(print("Number of initial entities: ")))

while entities < 1000000000:
	finalvalue = entities * 2

days = math.log(finalvalue / entities, 2)

if finalvalue >= 1000000000:
	break
	print("In", days, ", there will be 1 billion entities.")