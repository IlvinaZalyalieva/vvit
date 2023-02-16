print("введите  значения коэффициентов квадратного уравнения:")
a, b, c = float(input()), float(input()), float(input())
"ax^2 + bx + c"
d = b**2 - 4*a*c
if a == 0 and b == 0 and c == 0:  
    print('х любое число')
elif a == 0 and b == 0 and c != 0:
    print('корней нет')
elif a == 0 and b !=0 and c !=0:
    print(-c/b)
elif d > 0:
    x1 = (-b + d ** 0.5) / (2 * a)
    x2 = (-b - d ** 0.5) / (2 * a)
    print('первый корень:', x1)
    print('второй корень:', x2)
elif d == 0:
    x = -b / (2*a)
    print('единственный корень:', x)
else:
    print('действительных корней нет')