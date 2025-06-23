#set math.mat(delim: "|")
#let font_size = 5pt

#let level1_color = rgb(153, 215, 255) // lighter blue
#let level2_color = rgb(190, 245, 153) // lighter green
#let level3_color = rgb(255, 230, 153) // lighter yellow/orange
#let level4_color = rgb(255, 153, 153) // lighter red
#let level5_color = rgb(215, 153, 255) // lighter purple


#show heading: set text(black, size: 5pt)
#show heading: set block(
    radius: 0.65mm,
    inset: 0.65mm,
    width: 100%,
    above: 0.35em,
    below: 0.35em,
)

#show heading.where(level: 1): set block(fill: rgb(level1_color))
#show heading.where(level: 2): set block(fill: rgb(level2_color))
#show heading.where(level: 3): set block(fill: rgb(level3_color))
#show heading.where(level: 4): set block(fill: rgb(level4_color))
#show heading.where(level: 5): set block(fill: rgb(level5_color))
#set heading(numbering: "1.1")

#set page(
  margin: (left: 2mm, right: 2mm, top: 3.5mm, bottom: 2mm),
  paper: "a4",
  flipped: true,
  columns: 5
)

#set text(
  size: 5pt
)

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

#set table(
  stroke: 0.5pt
)

#include "fragments/01-Basics of Calculus.typ"
#include "fragments/02-Differential Equations.typ"
#include "fragments/03-Stats.typ"
#include "fragments/04-Vectors.typ"
#include "fragments/05-Partial Derivatives.typ"
#include "fragments/06-Double Integrals.typ"

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
// SE 1 Q7
// $
// f(x,y) = y^3 + 3x^2 y - 6y^2 - 6y^2 + 2\
// f_x = 6x y - 12x\
// f_y = 3y^2 + 3x^2 -12y\
// f_(x x) = 6y - 12\
// f_(y y) = 6y - 12\
// f_(x y) = 6x\ \
// f_(x x) = 6x(y - 2) = 0\
// x = 0 "or" y = 2\
// x = 0: f_y = 3y^2 -12y = 0\
// 3y(y-4) = 0\
// y = 4, 0\
// y = 2: f_y = 3x^2 - 12 = 0\
// 3x^2 = 12\
// x^2 = 4\
// x = plus.minus 2\ \
// (0, 0), D > 0, f_(x x) < 0, "Maxima"\
// (0,4), D > 0, f_(x x) > 0, "Minima" \
// (2, 2), D < 0, "Saddle Point"\
// (-2, 2), D < 0, "Saddle Point"\
// D = f_(x x) f_(y y) - (f_(x y))^2\
// D = (6y-12)^2 - 36x^2\  
// $
// SE2 Q2 (a)
// $
// 2 x y' + 4y = 12x\
// y' + 2/x y = 6 \
// I(x) = e^(integral 2/x dif x) = e^(2ln x) = x^2\
// x^2 y' + 2 x y = 6 x^2 \
// (y x^2)' = 6x^2 \
// y x^2 = integral 6 x^2 dif x\
// y x^2 = 2x^3 + C\
// y = 2x + C/x^2
// $
// SE2 Q2 (b)
// $
// y' - 2/x y = 5y^3\
// "Multiply by" (1-n)y^(-n)\
// "set" u = y^(1-n)\
// -2/y^3 y' + 4/(x) 1/(y^2) = -10\
// "let" u = y^(-2)\
// u' = -2y^(-3)y'\
// u' + 4/x u = -10\
// I(x) = e^(integral 4/x dif x) = e^(4 ln x) = x^4\
// x^4 u' + 4x^3 u = 10 x^4 \
// (u x^4)' = -10x^4\
// u x^4 = -2x^5 + C\
// u = (-2x^5+C)x^4\
// 1/y^2 = u\
// 1/y^2 = -2x + C/x^4\
// y^2 = x^4/(C-2x^5)\
// y = plus.minus sqrt(x^4/(C-2x^5))
// $

// SE2 Q3 - Coefficients
// $
// y'' - 4y' + 4y = 2x e^x + 25 sin(x)\
// "Characteristic Equation"\
// r^2 - 4r + 4 = 0\
// (r-2)^2 = 0\
// r = 2\
// y_c (x) = C_1 e^(2x) + C_2 x e^(2x) \
// y_p (x) = (A x + B)e^x + C sin x + D cos x\
// y'_p = A e^x + (A x + B) e^x + C cos x - D sin x\
// y''_p = A e^x +(A x A + B) e^x - C sin x - D cos x\
// (A x + 2A + B)e^x - (sin x - D cos x -4(A x + A + B)e^x) - 4(cos x + 4D sin x + 4(A x+B)e^x + 4C sin x + 4D cos x)\
// = A x e^x + (2A + B - 4A - 4B)e^x + (-D - 4C + 4D)cos x + (-C +4D + 4C)sin x\
// = A x e^x + (B - 2A)e^x + (3D - 4C)cos x + (3C + 4D)sin x = 2x e^x + 25 sin x\
// A = 2\
// B- 2A = 0, B = 4\
// 3C + 4D = 25\
// 3D - 4C = 0\
// C = 3, D = 4\
// y_p (x) = (2x + 4)e^x + 3 sin x + 4 cos x\
// y = y_c + y_p\
// y = C_1 e^(2x) + C_2 x e^(2x) + (2x + 4)e^x + 3 sin x + 4 cos x
// $

// SE 1 Q3 - Variation of parameters
// $
// y'' - 2y' - 3y = 4e^(5x)\
// r^2 - 2r - 3 = 0\
// (r+3)(r-1) = 0\
// r = -3, r = 1\
// y_c(x) =C_1 e^(3x) + C_2 e^(-x)\
// y_p(x) = u_1 e^(3x) + u_2 (x)e^(-x)\
// u_1 = -1/a integral (y_2(x) f(x))/(W(y_1, y_2)) dif x\
// u_1 = 1/a integral (y_1(x) f(x))/(W(y_1, y_2)) dif x\
// W = mat(y_1, y_2; y'_1, y'_2) = y_1 y'_2 - y_2 y'_1\
// y_1 = e^(3x), y_2 = e^(-x), f(x) = 4e^(5x), y'_1 = 3e^(3x), y'_2 = -e^(-x)\
// W(y_1, y_2) = -4e^(2x)\
// u_1 = - integral (e^(-x) dot 4e^(5x))/(-4e^(2x)) dif x\
// u_1 = - integral e^(2x) dif x = 1/2 e^(2x) \
// u_2 = integral (e^(3x) dot 4e^(5x))/(-4e^(2x)) dif x\
// u_2 = integral -e^(6x) dif x = -1/6 e^(6x)\
// y_p = 1/2 e^(5x) - 1/6 e^(5x) = 1/3 e^(5x)\
// y = C_1 e^(3x) + C_2 e^(-x) + 1/3 e^(5x)
// $
