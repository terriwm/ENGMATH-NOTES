= Double Integrals
== Double Integrals over Rectangles
The volume of a "slice of cake" where the top is defined by $z=f(x,y)$
$
integral_0^1 (integral_0^1 x d x) d y \
=integral_0^1 1/2 d y \
= 1/2
$
This is often written as
$
D: [a,b]times[c,d] \
integral integral_D f(x, y) d A  = integral_c^d integral_a^b f(x,y) d x d y \ \
// (15.1)("EX".1)\
// R = [0,2] times [0,2] \
// z = 16-x^2-2y^2 \
// V = integral integral_R (16-x^2-2y^2) d A \
// V = integral_0^2 integral_0^2 (16-x^2-2y^2) d x d y \
// V = integral_0^2 [16x-1/3x^3 - 2y^2x]_0^2 d y \
// V = integral_0^2 (88/3 - 4y^2) d y \
// V = [88/3 y -4/3y^3]_0^2 \
// V = 144/3 = 48 "units"^3
$
== Double Integrals over type I and type II region
Type I region: Bounded by a function on the top and bottom, and constants on the left and right

Type II region: Bounded by functions, left and right but constants top and bottom

These mean that the bounds of the integral are functions but *THE OUTSIDE INTEGRAL MUST NEVER HAVE THE FUNCTIONS* \
(15.2)(EX1)
$
integral integral_D (x+2y) d A \
D - "The Region bounded by" y = 2x^2, y = 1+x^2 \
2x^2 = 1 + x^2 \
x = plus.minus 1 \
"Top func" - y = 1+x^2 \
"Bottom func" - y = 2x^2 \
V = integral_(-1)^1 integral_(2x^2)^(1+x^2) (x+2y) d y d x "{Because inside func is "y"}" \
= integral_(-1)^1 [x y + y^2]_(2x^2)^(1+x^2) d x \
= integral_(-1)^1 [(x(1+x^2) + (1+x^2)^2) - (2x^3 + 4x^4)] d x \
= integral_(-1)^1 x+x^3+1+x^4+2x^2-2x^3-4x^4 d x \
= integral_(-1)^1 -3x^4 - x^3 + 2x^2 + x + 1 d x \
= [-3/5x^5 - 1/4x^4 + 2/3x^3 + 1/2x^2 + x]_(-1)^1 \
= 32/15
$

== Double Integrals in Polar Coordinates
Given $(r, theta)$ the cartesian coordinates are $(r cos theta, r sin theta)$. $d A = r d r d theta$

(15.3)(EX1)
$
integral integral_R (3x + 4y^2) d A \
R - "Bounded by the circles" x^2 + y^2 = 1, x^2 + y^2 = 4 \
"Radii are: " 1,2 \
x = r cos theta, y = r sin theta, d A = r d r d theta \
= integral_0^pi integral_1^2 (3r cos theta + 4r^2 sin^2 theta) r d r d theta \
= integral_0^pi integral_1^2 (3r^2 cos theta + 4r^3 sin^2 theta) d r d theta \
= integral_0^pi [r^3cos theta + r^4 sin^2 theta]_0^2 d theta "{Michael messed up the bounds here}" \
= integral_0^pi 8 cos theta + 16 sin^2 theta d theta \
cos 2 theta = 1 - 2 sin^2 theta \
2 sin^2 theta = 1 + cos 2 theta \
16 sin^2 theta = 8 + 8 cos 2 theta \
= integral_0^pi 8 cos theta + 8 + 8 cos 2 theta d theta \
= [8 sin theta + 8 theta + 4 sin 2 theta]_0^pi \
= (0 + 8pi +0) - (0 + 0 + 0) \
= 8 pi
$

== Vector Fields - What are they?
More general functions, vector input $->$ vector output, somewhat like a wind map, at all points there is a vector representing the wind at a specific point.

Suppose we have a vector field $arrow(F)$, and a curve $C:arrow(r)(t)$
$
integral_C arrow(F) dot d arrow(r) = integral_a^b arrow(F)(arrow(r)(t)) dot arrow(r)'(t) d t
$
16.2 Ex(7) - Find the work done by the force field $arrow(F)(x, y) = (x^2, -x y)$ moving along the semi circle $arrow(r)(t) = (cos t, sin t), t in [0, pi/2]$
$
arrow(F)(x, y) = (x^2, -x y)\
arrow(r)(t) = (cos t, sin t), t in [0, pi/2]\
arrow(r)'(t)=(-sin t, cos t) \
arrow(F)(arrow(r)(t)) = (cos^2 t, -cos t sin t) \
integral_0^(pi/2) (cos^2t, -cos t sin t) dot (-sin t, cos t) d t\
= integral_0^(pi/2) -2cos ^2 sin t d t\
"let" u = cos t \
d u = -sin t d t\
2 d u = -2 sin t d t \
"when" t = 0, u = 1, "when" t = pi/2, u = 0\
= integral_1^0 u^2 d u \
= 2[u^3/3]_1^0\
= -2/3 "J"
$

== Conservative Vector fields
$arrow(F)$ is conservative if some function $f$ such that $arrow(F) = gradient f$ then $f$ is called the potential function for $arrow(F)$

$arrow(F) = (P, Q)$ on an open simply connected region $D$ (exponentials, polynomials, trig functions all satisfy this), then if $(partial P)/(partial y) = (partial Q)/(partial x)$ throughout D, then $arrow(F)$ is conservative.

16.3 Ex(2) $arrow(F) = (x-y, x-2)$, determine whether this function is conservative
$
(partial P)/(partial y) = -1, (partial Q)/(partial x) = 1 therefore "Not conservative"
$

If $arrow(F)$ is conservative, $arrow(F) = gradient f$
$
integral_C arrow(F) dot d arrow(r), C: arrow(r)(t), a <= t <= b = f(arrow(r)(b)) - f(arrow(r)(a)) 
$

== Curl and Divergence
Curl is only relevant to 3D fields

$
arrow(F) = (P, Q, R)\
"curl"(arrow(F)) = (R_y -Q_z, P_z - R_x, Q_x - P_y) \
arrow(gradient) = (partial/(partial x), partial/(partial y), partial/(partial z))\
"eg" arrow(gradient)f = ((partial f)/(partial x), (partial f)/(partial y), (partial f)/(partial z))\
"curl"(arrow(F)) = arrow(gradient) times arrow(F) = arrow(i)mat(partial_y, partial_z;Q, R) - arrow(j)mat(partial_x, partial_z;P, R) + arrow(k)mat(partial_x, partial_y;P, Q)\
= (R_y -Q_z, P_z - R_x, Q_x - P_y)
$

16.5 Ex(1) $arrow(F) = (x z, x y z, -y^2)$
$
"curl"(arrow(F)) = mat(arrow(i), arrow(j), arrow(k);partial_x, partial_y, partial_z;x z, x y z, -y^2) = arrow(i)mat(partial_y, partial_z;z y x, -y^2) - arrow(j)mat(partial_x, partial_z;x z, -y^2) + arrow(k)mat(partial_x, partial_y;x z, x y z)\
= (-2y - x y, 0+x, y z - 0) = (-2y-x y, x, y z)
$
Conservative vector fields are irrotational

Divergence - Exists in any dimensions, how much is something moving towards ($"div"(arrow(F)) < 0$) or away ($"div"(arrow(F)) > 0$) from a point
$
"div"(arrow(F)) = P_x+ Q_y + R_z = arrow(gradient) dot arrow(F)
$
