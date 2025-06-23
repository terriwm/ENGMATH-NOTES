#set math.mat(delim: "|")

= Partial Derivatives
== Multivariable Functions
Effectively a vector in and a scalar out:
$ f(x, y) = sqrt(x + 2y) $
The $f'(x)$ notation is meaningless for this, instead
$ (d f)/(d x) = 1/2(x+2y)^(-1/2)(1+2(d y)/(d x)) $
When we do this, we often just want to observe what happens when we change one thing, which results in a partial derivative
$ (partial f)/(partial x) = f_x = 1/2(x+2y)^(-1/2)(1) \
f_y = 1/2(x+2y)^(-1/2)(2)
$
14.2, 15)
$
f(x, y) = x^4 + 5x y^3 \
f_x = 4x^3 + 5y^3 \
f_y = 0 + 15x y^2 \
f_(x y) = 0 + 15y^2 "{Second partial, with respect to "x" then "y"}"\
f_(x x) = 12x^2 + 0
$
19)
$
z = ln(x+t^2) \
z_x = (1)/(x+t^2) \
z_t = (2t)/(x+t^2)
$
28)
$
f(x, y) = x^y \
f_x = y x^(y-1) \
f_y = x^y ln(y)
$
$f_(x y) = f_(x x)$ When $f$ is "nice", $f_(x x y) = f_(y x x) = f_(x y x)$, polynomials are always nice
=== Product Rule
$
partial/(partial x)(f dot g) = f_x dot g + g_x f
$

=== Compound Functions
Suppose:
$
f(x, y), x=g(t), y = h(t)
$
Therefore you know that $f(t)$ exists but you don't/can't find it, how do we find $(d f)/(d t)$
$
(d f)/(d t) = f_x (d x)/(d t) + f_y (d y)/(d t)
$
If
$
f(x, y), x=g(u, v), y = h(u , v)
$
Then we know that $f(u, v)$
$
f_u = f_x x_u + f_y y_u \
f_v = f_x x_v + f_y y_v
$

== Optimisation
Find critical points - $f_x = 0, f_y = 0$ at the same time\
Classify critical points - Use second derivative test
$
D = f_(x x) dot f_(y y) - [f_(x y)]^2\
"Check" D > 0, "check" f_(x x) > 0 => "minimum", f_(x x) < 0 => "maximum" \
D < 0 => "Saddle point" \
D = 0 => "No useful information"
D = mat(f_(x x), f_(x y); f_(y x), f_(y y))
$
Which therefore allows you to find $D$, for more than 2 variable functions

// 14.7) EX3)
// $
// f(x,y) = x^4 + y^4 -4 x y + 1 \
// f_x = 4x^3 + 0 - 4y \
// f_y = 0 + 4y^3 - 4x \
// 4x^3 - 4y = 0 \
// 4y^3 - 4x = 0 \
// y = x^3 \
// 4x^9 - 4x = 0 \
// 4x(x^8 -1) = 0 \
// 4x(x^4 - 1)(x^4 +1) = 0 \
// 4x(x^2 -1)(x^2 +1)(x^4+1) = 0\
// x = 0, 1, -1\
// P(0, 0), P(1, 1), P(-1, -1) "Critical Points" \
// f_(x x) = 12 x^2, f_(y y ) = 12y^2, f_(x y) = -4 \
// D = 144x^2y^2 - 16
// (0, 0) -> D = -16 < 0, "Saddle point" \
// (1, 1) -> D = 128 > 0, f_(x x) = 12 > 0, "Minimum" \
// (-1, -1) -> D = 128 > 0, f_(x x) = 12 > 0, "Minimum"
// $
// 14)
// $
// f(x, y) = x y + 1/x + 1/y \
// f(x, y) = x y + x^(-1) + y^(-1) \
// f_x = y - x^(-2) \
// f_y = x - y^(-2) \
// f_(x x) = 2x^(-3) \ 
// f_(x y) = 1 \
// f_(y y) = 2y^(-3) \
// D = 4/(x^3 y^3) -1 \
// y - 1/x^2 = 0 \
// x - 1/y^2 = 0 \
// y = 1/x^2 \
// x - x^4 = 0 \
// x(1-x^3) = 0 \
// x = 0,1, x != 0 \
// P(1,1), D= 3 > 0, f_(x x) > 0 -> "Minimum"
// $
