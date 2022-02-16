import math

print("This app will quickly calculate the roots of a quadratic function.")
print("The function will be calculated in the form of ax^2+bx+c=0.")

var_a = float(input("What is the value of constant a? "))
var_b = float(input("What is the value of constant b? "))
var_c = float(input("What is the value of constant c? "))
deltavalue = (var_b ** 2) - 4 * var_a * var_c


class Analyze:
    def __root_calculation__(self):
        if var_a == 0:
            print("This function is not valid.")
        else:
            if deltavalue < 0:
                print(
                    "There are no real roots for this function")
            elif deltavalue == 0:
                global root0
                root0 = -(var_b) / (2 * var_a)
            elif deltavalue > 0:
                global root1, root2
                root1 = (-(var_b) + math.sqrt(deltavalue)) / (2 * var_a)
                root2 = (-(var_b) - math.sqrt(deltavalue)) / (2 * var_a)

    def __root_print__(self):
        if root0 != " ":
            print("The root of this function is x = ", root0)
        elif root1 != " " and root2 != " ":
            print("The roots of this function are x1 = ",
                  root1, "and x2 = ", root2)


Analyze()
