#set math.mat(delim: "|")

= Vectors
== Dot Product
$
vec(a_1, a_2) dot vec(b_1, b_2) = a_1 b_1 + a_2 b_2 \
vec(a_1, a_2) dot vec(b_1, b_2) = |a|dot|b|cos theta
$
If a dot product is zero the vectors are othogonal

== Cross Product (Vector Product)
Only works in 3 Dimensional Vector, produced a vector perpendicular to two vectors
$
arrow(a) = vec(1, 3, 4), arrow(a) = vec(2, 7, -5) \
arrow(a) times arrow(b) = mat(i , j , k; 1, 3, 4; 2, 7, -5) \ 
= arrow(i) mat(3, 4,; 7, -5) - arrow(j) mat(1, 4; 2, -5) + arrow(k) mat(1, 3; 2, 7) \
= arrow(i) (-15-28) - arrow(j) (-5-8) + arrow(k)(7-6) \
= -43arrow(i) +13arrow(j) + arrow(k) \
arrow(a) times arrow(b) = vec(-43, 13,1)
$

== Vector Functions
A function where the output is a vector eg
$ arrow(r)(t) = vec(2t, t^3) $
13.1 Ex (3)
$
arrow(r)(t) = vec(1+t, 2+5t, -1+6t)
$
This defines a line within the 3D space\
Ex (4)
$
arrow(r)(t) = vec(cos t, sin t, t)
$
This graph spirals upwards around $z$ 
=== Derivatives
13.2 Ex(1)
$
arrow(r)(t) = vec(1+t^3, t e^(-t), sin 2t) \
arrow(r')(t) = vec(3t^2, e^(-t)-t e ^(-t), 2 cos 2t)
$
This defines the vector that describes the change of the function, but we apply the "unit tangent vector" as the magnitude needs to be normalised
$
arrow(T)(t) = (arrow(r')(t))/(|arrow(r')(t)|) \
$

=== Integrals
Ex (5)
$
arrow(r)(t) = vec(2cos t, sin t, 2 t)\
integral arrow(r)(t) d t = vec(2 sin t , -cos t, t^2) + arrow(C)
$
Definite integrals work the same

== Arc Length
$
arrow(r)(t) "is a vector function" \
L = integral_a^b |arrow(r')(t)| d t
$
This often doesn't work out nicely \
13.3 Ex (1)
$
arrow(r)(t) = vec(cos t, sin t, t)
"From" (1, 0 , 0) "to" (1, 0, 2pi) \
arrow(r')(t) = vec(-sin t, cos t, 1)
|arrow(r')(t)| = sqrt(sin^2 t + cos^2 t + 1) = sqrt(2) \
L = integral_0^(2 pi) sqrt(2) d t = 2sqrt(2)pi
$

== Re Parameterization
$
arrow(r)(t) = vec(t, 2t)\
x = 2t \
arrow(r)(x) = vec(1/2x, x)
$
=== Reparameterisation of a vector function in terms of arc length
$
L = integral_a^b |arrow(r')(t)| d t \
S = integral_0^t |arrow(r')(u)| d u "{Arc length function}" 
$
Ex (2)
$
arrow(r)(t) = vec(cos t, sin t, t) \|arrow(r')(t)| = sqrt(2) 
"Starting point" (1, 0,0) \
S = integral_0^t sqrt(2) d u
" "S = sqrt(2)t - 0 \
t = S/sqrt(2) 
"  " arrow(r)(s) = vec(cos S/sqrt(2), sin S/sqrt(2), 2/sqrt(2))
$

== Curvature of a Vector Function
Change in the unit tangent vector $T(t)$\
Suppose $arrow(r)(t)$, $arrow(r)(s) -> arrow(r')(s)$, then $arrow(T)(s) = arrow(r')(s)$, curvature uses $kappa$
$
kappa = |arrow(T')(s)|
arrow(r)(s) = vec(cos S/sqrt(2), sin S/sqrt(2), 2/sqrt(2)) \
arrow(r')(s) = arrow(T)(s) = vec(-1/sqrt(2) sin(S/sqrt(2)), 1/sqrt(2) cos(S/sqrt(2)), 1/sqrt(2)) \
therefore arrow(T')(s) = vec(-1/2cos(S/sqrt(2)), -1/2sin(S/sqrt(2)), 0) \
therefore kappa = sqrt(1/4 cos^2(S/sqrt(2)) + 1/4sin^2(S/sqrt(2))) = sqrt(1/4) = 1/2
$
This is usually very difficult, the stars must align for this to work. There are other options:
$
kappa = |arrow(T')(s)| \
kappa = (|arrow(T')(t)|)/(|arrow(r')(t)|) \
kappa = (|arrow(r')(t) times arrow(r'')(t)|)/(|arrow(r')(t)|)^3
$
Basically just default to the third option, but if you have $arrow(T')(S)$, or if it simple (just a constant or something) maybe use $(|arrow(T')(t)|)/(|arrow(r')(t)|)$.