import math

print("This will check whether a given number is prime.\n")
inp = input(print("Give a number: "))
inp_conv = int(inp)
interval = 2
condition = math.sqrt(inp_conv)

while interval < condition:
    rem = inp_conv % interval
    if rem == 0:
        for _ in range(1):
            print("non\n")
    else:
        interval += 1

if interval > condition and rem != 0:
    print("oui\n")
