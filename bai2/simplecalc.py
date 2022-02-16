print ("This app will calculate the result of a simple ax+b=0 function.")
var_a = float(input("What is the value for constant a? ")) # Call up float() method to convert to float
var_b = float(input("What is the value for constant b? ")) # Same thing here, calling up float()

result = -(var_b) / var_a

if var_a == 0:
	print ("There are no values of x that can satisfy this function.")
else:
	print ("The value of the variable x is x = ", result)
# Bruh there's no end, you're kidding me.
