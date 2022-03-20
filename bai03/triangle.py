import math # Import math module.

print("This will check whether 3 numbers create a triangle.")
print("This will calculate the parameters if they create a triangle.")

# Gets variables and converts to float
var_a = float(input("What's the first number? "))
var_b = float(input("What's the second number? "))
var_c = float(input("What's the last number? "))


class Analyze:
    def valid(value1, value2, value3):
        return(value1 + value2 > value3 and value1 + value3 > value2 and value2 + value3 > value1 and value1 > 0 and value2 > 0 and value3 > 0)

    def perimeter(value1, value2, value3):
        return(value1 + value2 + value3)

    def area(value1, value2, value3):
        halfperimeter = (value1 + value2 + value3) / 2
        areasquared = halfperimeter * (halfperimeter - value1) * (halfperimeter - value2) * (halfperimeter - value3)
        return(math.sqrt(areasquared))


perimetercalc = Analyze.perimeter(var_a, var_b, var_c)
areacalc = Analyze.area(var_a, var_b, var_c)

if Analyze.valid(var_a, var_b, var_c):
    print("The perimeter of the triangle is ", perimetercalc, "and the area of the triangle is ", areacalc)
else:
    print("The values do not create a triangle. Exiting.")