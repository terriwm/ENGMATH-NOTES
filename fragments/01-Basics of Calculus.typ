= Basics of Calculus
== Derivatives
#grid(
  [Chain Rule $ y = f(g(x)) \ g'(x)f'(g(x)) $],grid.vline(stroke: 0.5pt),[Product Rule $ y = f(x)g(x) \ g'(x)f(x) + f'(x)g(x) $],grid.vline(stroke: 0.5pt),[Quotient Rule $ y = (f(x))/(g(x)) \ (g'(x)f(x) - f'(x)g(x))/(g(x)^2) $],
  columns: (0.7fr, 1fr, 1fr),
  inset: 2pt
)

== Integrals
#grid(
  [$ integral x^(-1) d x = ln|x|+c $],[$ integral e^x d x = e^x + c $],
  [$ integral cos x d x = sin x + c $],[$ integral sin x d x = -cos x + c $],
  [$ integral tan x d x = ln|sec^2 x| + c $],[$ integral sec x tan x d x = sec x + c $],
  grid.cell(colspan: 2)[$ integral sec^2 x d x = tan x + c $],
  
  columns: (1fr, 1fr),
  inset: 0.2pt,
)

=== $u$ Substitution
#grid(
  [#text(fill: green)[$ integral cos x e^(sin x) d x $] $ "let" u = sin x \ (d u)/(d x) = cos x $],[$  d u = cos x d x \ integral e^u d u \ = e^u + c \ = e^(sin x) + c $],
  columns: (1fr, 1fr,),
  
)

=== Integration By Parts
#grid(
  [$ integral u d v = u v - integral v d u $ #text(fill: green)[$ integral 2t e^t d t $] $  $],[$ "let" u = 2t "         let" d v = e^t d t \ "let" d u = 2 d t "     let" v = e^t \ integral 2 t e^t d t = 2t e^t - integral 2 e^t d t \ = 2t e^t - 2e^t + c $],
  columns: (1fr, 1fr),
)

=== Trig Subsitution
#table(
  table.cell(fill: rgb(153, 215, 255))[Expression],table.cell(fill: rgb(153, 215, 255))[Substitution],table.cell(fill: rgb(153, 215, 255))[Identity],
  [$ sqrt(a^2 - x^2) $],[$ x = a sin theta $],[$ 1 - sin^2 theta = cos^2 theta $],
  [$ sqrt(a^2 + x^2) $],[$ x = a tan theta $],[$ 1 + tan^2 theta = sec^2 theta $],
  [$ sqrt(x^2 - a^2) $],[$ x = a sec theta $],[$ sec^2 theta - 1 = tan^2 theta $],
  stroke: 0.5pt,
  columns: (1fr, 1fr, 1fr),
)
#grid(
  [#text(fill: green)[$ integral 2/(x^2 sqrt(x^2 - 16)) $]$ "let" x = 4 sec theta \ d x = 4 sec theta tan theta d theta \ = integral (8 sec theta tan theta) / (16sec^2 theta sqrt(16 sec^2 theta - 16)) d theta \ integral (8 sec theta tan theta) / (16 sec^2 theta 4 tan theta) $],[$ = integral 1/(8 sec theta) d theta \ 1/8 integral cos theta d theta \ = 1/8 sin theta + c \ = 1/8 (sqrt(x^2 - 16))/x + c $],
  columns: (1fr, 1fr),
)

// === Partial Fraction Decomposition
// #text(fill: green)[$ integral (x^3 - 4x - 10)/(x^2 - x - 6) d x $]
// #table(
//   [],[],[],[$x$],[$+1$],
//   table.hline(start: 1, stroke: 0.5pt),
//   [$x^2-x-6$], table.vline(start: 1, end: 2, stroke: 0.5pt),[$x^3$],[$+0x^2$],[$-4x$],[$-10$],
//   [#align(right)[$-$]],[$(x^3$],[$-x^2$],[$-6x$],[$+0)$],
//   table.hline(start: 1, stroke: 0.5pt),
//   [],[],[$x^2$],[$+2x$],[$-10$],
//   [],[#align(right)[$-$]],[$(x^2$],[$-x$],[$-6)$],
//   table.hline(start: 2, stroke: 0.5pt),
//   [],[],[],[$3x$],[$-4$],
  
//   stroke: none,
//   columns: (1fr, 1fr, 1fr, 1fr, 1fr)
// )
// #grid(
//   [$ = integral x+1 + (3x-4)/(x^2-x-6) d x \ = x^2/2 + x + integral (3x-4)/(x^2 - x - 6) d x \ x^2 - x - 6 = (x-3)(x+2) \ (3x-4)/((x-3)(x+2)) $],[$ = A/(x-3) + B/(x+2) \ "given" x = 3, x=-2 \ A = 1, B= 2 \ = integral x^2/2 + x + integral 1/(x-3) + 2/(x+2) d x \ = x^2/2 + x + ln|x+3|+2ln|x+2|+c $],
//   columns: (1fr, 1fr)
// )

== Trig Identities
#table(
    columns: 2,
    align: center,
    [Pythagorean identities], [Negative identities],
    [$sin^2theta+cos^2theta=1$], [$sin(-theta)=-sin theta$],
    [$1-sin^2theta=cos^2theta$], [$cos(-theta)=cos theta$],
    [$1-cos^2theta=sin^2theta$], [$tan(-theta)=-tan theta$],
    [$1+tan^2theta=sec^2theta$], [$cot(-theta)=-cot theta$],
    [$1+cot^2theta=csc^2theta$], [$sec(-theta)=sec theta$],
    [$cos^2 theta=1/2 + 1/2cos 2theta$],[$csc(-theta)=-csc theta$],
    table.cell(fill: (rgb(215, 153, 255).lighten(30%)),[Double Angle formulas]), table.cell(fill: (rgb(215, 153, 255).lighten(30%)),[Sum & difference formulas]),
    [$sin(2theta)=2sin theta cos theta$],[$sin(x plus.minus y)=sin x cos y plus.minus sin y cos x$],
    table.cell(rowspan: 1, [$cos(2theta)\
    =cos^2theta-sin^2theta\
    =1-sin^2theta\
    =2cos^2theta-1$]), 
    [$cos(x plus.minus y)=cos x cos y minus.plus sin x sin y$],
    [$tan 2theta=(2tan theta)/(1-tan^2theta)$], [$tan(x plus.minus y)=(tan x plus.minus tan y)/(1 minus.plus tan x tan y)$]
    
  )  

== Linear trick
If integrating a linear to a power and there is nothing outside...
1. Add 1 to the power
2. Divide the whole thing by the power
3. Divide by the derivative of the inside
4. Add +C if indefinite integral
5. Simplify \
*For a trigonometric function*, the linear trick allows:\
#h(2em)$integral cos(5x)d x=1 / 5sin(5x)+c$