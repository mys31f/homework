import math

print("This app will quickly calculate the roots of a quadratic function.")
print("The function will be calculated in the form of ax^2+bx+c=0.")

var_a = float(input("What is the value of constant a? "))
var_b = float(input("What is the value of constant b? "))
var_c = float(input("What is the value of constant c? "))
deltavalue = (var_b ** 2) - (4 * var_a * var_c)

def valid(value):
    return(value != 0)

def duplicate(value1, value2):
    return(value1 == value2)

def deltatrue(value):
    return(value >=0)


if valid(var_a) and deltatrue(deltavalue):
    root1 = ((- var_b + math.sqrt(deltavalue)) / (2 * var_a))
    root2 = ((- var_b - math.sqrt(deltavalue)) / (2 * var_a))
    if duplicate(root1, root2):
        print("The root of this function is x =", root1)
    else:
        print("The roots of this function is x1 =", root1, "and x2 =", root2)
else:
    print("Function invalid. Exiting")
