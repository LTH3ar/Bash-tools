print("list of options: ")

print('0: exit \n1:Horizontal range')
choice = int(input('Please choose an option: '))

while choice in range(0, 2):
    match choice:
        case 0:
            print("Quitting")
            exit()
        case 1:
            print("System is on")
            print("Calculator start")
            print("Please note that this calculator can only calculate Horizontal range of a throwing object for now")

            import math
            from math import sin, cos, tan, radians, pi, sqrt

            V0 = float(input("Initial velocity: "))

            Theta = float(input("Angle: "))

            g = 10

            h = float(input("Initial height: "))

            d = (V0 * cos(Theta*pi*180**-1) / g) * (V0 * sin(Theta*pi*180**-1) + sqrt((V0**2)*(sin(Theta*pi*180**-1)**2) + (2 * g * h)))

            t = 2 * V0 * sin(Theta*pi*180**-1)

            print(f"Horizontal range: {d} \nTime: {t} \n")

            print('Do you want to do it again?')
            choice1 = str(input("yes or no: "))
            if choice1 == 'yes':
                continue
            elif choice1 == 'no':
                choice = 0

else:
    exit()
