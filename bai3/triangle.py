print("This will check whether 3 numbers create a triangle.")
print("This will calculate the parameters if they create a triangle.")

var_a = float(input("What's the first number?"))
var_b = float(input("What's the second number?"))
var_c = float(input("What's the last number?"))


class Verify:

    def Validate():
        validation1 = var_a + var_b > var_c
        validation2 = var_a + var_c > var_b
        validation3 = var_b + var_c > var_a
        print(validation1, validation2, validation3)


Verify.Validate()


class Calculate:
    perimeter = var_a + var_b + var_c
    heronsquare = (perimeter / 2) * ((perimeter / 2) - var_a) * \
        ((perimeter / 2) - var_b) * ((perimeter / 2) - var_c)
