= Sample Exams
// 16.2 Q4
// $
// integral_C x e^y dif s\
// C: "Line segment from" (2,0) "to" (5,4)\
// arrow(r)(t) = (2+3t, 4t), t in [1,0]\
// = integral_0^1 (2+3t)e^(4t) sqrt(9+16) dif t\
// = 5 integral_0^1 (2+3t)e^(4t) dif t\
// = 5 integral_0^1 2e^(4t) + 3t e^(4t) dif t\
// = 5((17e^4 -5)/16)\
// = (85e^4 - 25)/16
// $
== SE 1 Q7 - Optimisation
$
f(x,y) = y^3 + 3x^2 y - 6y^2 - 6y^2 + 2\
f_x = 6x y - 12x\
f_y = 3y^2 + 3x^2 -12y\
f_(x x) = 6y - 12\
f_(y y) = 6y - 12\
f_(x y) = 6x\ \
f_(x x) = 6x(y - 2) = 0\
x = 0 "or" y = 2\
x = 0: f_y = 3y^2 -12y = 0\
3y(y-4) = 0\
y = 4, 0\
y = 2: f_y = 3x^2 - 12 = 0\
3x^2 = 12\
x^2 = 4\
x = plus.minus 2\ \
(0, 0), D > 0, f_(x x) < 0, "Maxima"\
(0,4), D > 0, f_(x x) > 0, "Minima" \
(2, 2), D < 0, "Saddle Point"\
(-2, 2), D < 0, "Saddle Point"\
D = f_(x x) f_(y y) - (f_(x y))^2\
D = (6y-12)^2 - 36x^2\  
$
== SE2 Q2 (a) - First Order DE
$
2 x y' + 4y = 12x\
y' + 2/x y = 6 \
I(x) = e^(integral 2/x dif x) = e^(2ln x) = x^2\
x^2 y' + 2 x y = 6 x^2 \
(y x^2)' = 6x^2 \
y x^2 = integral 6 x^2 dif x\
y x^2 = 2x^3 + C\
y = 2x + C/x^2
$

== SE2 Q3 - Coefficients
$
y'' - 4y' + 4y = 2x e^x + 25 sin(x)\
"Characteristic Equation"\
r^2 - 4r + 4 = 0\
(r-2)^2 = 0\
r = 2\
y_c (x) = C_1 e^(2x) + C_2 x e^(2x) \
y_p (x) = (A x + B)e^x + C sin x + D cos x\
y'_p = A e^x + (A x + B) e^x + C cos x - D sin x\
y'_p = (A x + A + B) e^x + C cos x - D sin x\
y''_p = A e^x +(A x + A + B) e^x - C sin x - D cos x\
y''_p = (A x + 2 A + B)e^x - C sin x - D cos x\
"Plug into original equation"\
(A x + 2A + B)e^x - C sin x - D cos x -4(A x + A + B)e^x\ - 4(cos x + 4D sin x + 4(A x+B)e^x + 4C sin x + 4D cos x)\
= A x e^x + (2A + B - 4A - 4B)e^x + (-D - 4C + 4D)cos x \ + (-C +4D + 4C)sin x\
= A x e^x + (B - 2A)e^x + (3D - 4C)cos x + (3C + 4D)sin x \ = 2x e^x + 25 sin x\
A = 2\
B- 2A = 0, B = 4\
3C + 4D = 25\
3D - 4C = 0\
C = 3, D = 4\
y_p (x) = (2x + 4)e^x + 3 sin x + 4 cos x\
y = y_c + y_p\
y = C_1 e^(2x) + C_2 x e^(2x) + (2x + 4)e^x + 3 sin x + 4 cos x
$

== SE 1 Q3 - Variation of parameters
$
y'' - 2y' - 3y = 4e^(5x)\
r^2 - 2r - 3 = 0\
(r+3)(r-1) = 0\
r = -3, r = 1\
$
$
y_c(x) =C_1 e^(3x) + C_2 e^(-x)\
y_p(x) = u_1 e^(3x) + u_2 (x)e^(-x)\
u_1 = -1/a integral (y_2(x) f(x))/(W(y_1, y_2)) dif x\
u_1 = 1/a integral (y_1(x) f(x))/(W(y_1, y_2)) dif x\
W = mat(y_1, y_2; y'_1, y'_2) = y_1 y'_2 - y_2 y'_1\
y_1 = e^(3x), y_2 = e^(-x), f(x) = 4e^(5x), y'_1 = 3e^(3x), y'_2 = -e^(-x)\
W(y_1, y_2) = -4e^(2x)\
u_1 = - integral (e^(-x) dot 4e^(5x))/(-4e^(2x)) dif x\
u_1 = - integral e^(2x) dif x = 1/2 e^(2x) \
u_2 = integral (e^(3x) dot 4e^(5x))/(-4e^(2x)) dif x\
u_2 = integral -e^(6x) dif x = -1/6 e^(6x)\
y_p = 1/2 e^(5x) - 1/6 e^(5x) = 1/3 e^(5x)\
y = C_1 e^(3x) + C_2 e^(-x) + 1/3 e^(5x)
$

== SE 1 Q1 (b)
$
(dif y)/(dif x) = 4x - 5y\
"Using" u = y - a x\
(dif u)/(dif x) = (dif y)/(dif x) - a\
(dif u)/(dif x) + a = 4 x - 5 (u - a x) \
(dif u)/(dif x) = (4 -5a) x - 5u - a\
"Want to cancel" x\
(4 - 5 a ) = 0\
a = 4/5\
(dif u)/(dif x) = -4/5 - 5u\
(dif u)/(dif x) = -5 (u + 4/25)\
integral 1/(u+ 4/25) dif u = - integral 5 dif x\
ln(abs(u + 4/25)) = -5x + C\
u + 4/25 = C e^(-5x)\
u = C e^(-5x) - 4/25\
y - 4/5 x = C e^(-5x) - 4/25\
y = 4/5 x + C e^(-5x) - 4/25
$

== SE 1 Q9 (b)
$
integral.cont y dif x - x dif y, "Bounded by the circle at the origin of radius" 4\
arrow(F) = (y, -x)\
integral.double_D (-1 -1) dif A\
"Switch to polar coords"\
integral_0^(2 pi) integral_0^4 -2 r dif r dif theta\
integral_0^(2 pi) [-r^2]_0^4 dif theta\
integral_0^(2 pi) -16 dif theta\
[-16theta]_0^(2 pi)\
= - 32 pi
$