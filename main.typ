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
#include "fragments/07-Sample Exam.typ"

