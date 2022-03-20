# get input from user with a number, then print the multiplication of that number with numbers from 1 to 10 inclusive.
print("This program will print out the multiplication of a number with number from 1 to 10 inclusive.\n")
number = int(input("Enter a number: "))

for i in range(1, 11):
    print(number, "x", i, "=", number * i)