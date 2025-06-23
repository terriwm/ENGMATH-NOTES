#let level1_color = rgb(153, 215, 255) // lighter blue
#let level2_color = rgb(190, 245, 153) // lighter green
#let level3_color = rgb(255, 230, 153) // lighter yellow/orange
#let level4_color = rgb(255, 153, 153) // lighter red
#let level5_color = rgb(215, 153, 255) // lighter purple

#let warning(body) = align(
  center,
  box(
    radius: 1pt,
    clip: true,
    table(
      align: left,
      table.cell(
        stroke: (left: 2pt + red.darken(10%), rest: level4_color),
        fill: level4_color,
        inset: (top: 0.15em, bottom: 0.65em)
      )[#align(horizon)[#emoji.warning]],
      table.cell(
        stroke: (left: 2pt + red.darken(10%), rest: level4_color),
      )[#body],
      columns: (95%),
      inset: 0.5em
    )
  )
)
= Differential Equations
== Separable Differential Equations
If the De is in the form $ (d y)/(d x) = f(x) dot g(y) $ Then there exists a solution $ integral 1/(g(y)) d y = integral f(x) d x $

== First Order Linear Differential Equations
$ y' + y P(x) = Q(x) $

The first stage of solving a First Order Linear DE, is finding the integrating factor ($I(x)$)
$ I(x) = C e^(integral P(x) d x) $
Then multiply everything by $I(x)$
$ I(x) y' + I(x) y P(x) = I(x) Q(x) \ (y I(x))' = I(x) Q(x) \ y I(x) = integral I(x) Q(x) d x $ 
Get $y$ by itself

== Bernoulli's Differential Equation
$ y' + P(x)y = Q(x)y^n $
1. Multiply everything by $(1-n)y^(-n)$
2. let $u = y^(1-n), (d u)/(d x)=(1-n)y^(-n) dot (d y)/(d x)$
#grid(
  [#text(fill: green)[$ x y' + y = -x y^2 $]$ y' + 1/x y = -y^2 \ -y^2 y' - 1/x 1/y = 1 $],[#align(center)[$ "let" u = y^(-2) \ (d u)/(d x) = -y^(-2) (d y)/(d x) \ u' - 1/x u = 1 $ Solve as if 2.2]],
  columns: (1fr, 1fr),
)

== Second Order Homogenous Linear DE
$ a y'' + b y' + c y = 0 $
Has Solutions:
$ y(x) = c_1 y_1(x) + c_2 y_2(x) $
Using the Characteristic Equation:
$ a r^2 + b r + c = 0 $
Solve for $r$ which gives three possible cases:
1. Real roots $r_1,r_2$: $y_1(x) = e^(r_1 x), y_2(x) = e^(r_2 x)$
2. Repeated Roots $r,r$: $y_1(x)=e^(r x), y_2(x)=x e^(r x)$
3. Complex Conjugate $alpha + Beta i, alpha - Beta i$: $ y(x) = e^(alpha x)(C_1 cos(Beta x) + C_2 sin(Beta x)) $

== Second Order non-Homogeneous DE
A Second order non-Homogeneous DE takes the form of
$
a y'' + b y' + c y = f(x)
$
The complementary solution still exists
$
y_c(x) = C_1 y_1(x) + C_2 y_2(x)
$
But there is a particular solution which helps form the exact solution, which is found using 2 methods
$
y(x) = y_c(x) + y_p(x)
$
#warning([Remember to use the method asked for in the question even if there is an easier way])
=== Undetermined Coefficients
This method is suitable for polynomials, exponents, $sin$ or $cos$

$f(x)$: Polynomial - Guess polynomial of the same degree; e.g. $f(x) = x^2, y_p(x) = A x^2 + B x + C$

$f(x)$: Exponent - Guess $y_p(x) = A e^(b x)$ e.g. $f(x) = 6e^(2x + 1), y_p(x) = A e^(2x + 1) = A e^(2x)$

$f(x): sin(b x) "or" cos(b x)$ - Guess $y_p(x) = A sin(b x) + B cos(b x)$

If two terms in $f(x)$ are added, add the guesses, similarly if they are multiplied, multiply the guesses, e.g.
$
f(x) = x^2 sin(x) + e^(2x)\
y_p(x) = (A x^2 + B x + C)(D sin(x) + E cos(x)) + F e^(2x)
$
Finally find $y'_p$ and $y''_p$ and equate the coefficients - Some expansion and simplification will be required.

=== Variation of Parameters
Given $a y'' + b y' + c y = f(x)$ and the complementary solution $y_c(x) = C_1 y_1(x) + C_1 y_2(x)$ the particular solution is $ y_p(x) = u_1(x)y_1(x) + u_2(x)y_2(x)$
$
u_1(x) = -1/a integral (y_2(x) f(x))/(W(y_1, y_2)) dif x\
u_2(x) = 1/a integral (y_1(x) f(x))/(W(y_1, y_2)) dif x\
W(y_1, y_2) = mat(y_1, y_2; y'_1, y'_2) = y_1 y'_2 - y_2 y'_1
$