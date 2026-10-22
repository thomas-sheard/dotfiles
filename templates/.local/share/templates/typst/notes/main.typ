#set text(
  font: "New Computer Modern",
  size: 12pt,
)

#set par(
  leading: 1em,
  first-line-indent: 1em,
  justify: true,
)

#set page(
  header: [
    #grid(
      columns: (1fr, 1fr),
      align(left)[Thomas Sheard],
      align(right)[s4101086],
    )
    #v(-.5em)
    #line(length: 100%, stroke: 0.5pt)
    #v(-1em)
  ]
)
 
#set heading(
  numbering: "1.",
)

#show heading.where(level: 1): set text(size: 12pt)
#show heading.where(level: 2): set text(size: 12pt)

#show heading: set block(above: 1.4em, below: 1.4em)

#align(center)[
  #set par(spacing: .8em)
  //#line(length: 100%, stroke: 0.5pt)
  *CRSE0001 Course Name*

  Assignment 
  #line(length: 100%, stroke: 0.5pt)
  //#text(size: 14pt, weight: "bold")[
]

#let toc = false
#let ai_disclaimer = false

#if toc {
  outline(
    title: "Contents",
    depth: 2,
  )
}

#if ai_disclaimer {
  v(1fr)
  align(center)[
    _Generative AI tools were not used for assistance in this assessment task._
  ]
}

#pagebreak()

// assignment goes here

//#bibliography("ref.bib", style: "apa.csl")

