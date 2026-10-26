#let toc = false
#let ai_disclaimer = false
#let bib = false

#set text(
//  font: "New Computer Modern",
//  size: 12pt,
)

#set par(
  justify: true,
//  leading: 1em,
//  first-line-indent: 1em,
)

// header
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

// maths helpers
#import "resources/extensions/maths.typ": *
#set text(font: "Libertinus Serif")
#show math.equation: set text(font: ("Libertinus Math", "New Computer Modern Math"))

// question numbering
#import "resources/extensions/questions.typ": *
#show: template 

// syntax highlighting (code blocks)
#set raw(theme: "resources/theme/gruvbox.tmTheme")

// doc start

#align(center)[
  #set par(spacing: .8em)
  //#line(length: 100%, stroke: 0.5pt)
  *CRSE0000 Course*

  Assignment
  #line(length: 100%, stroke: 0.5pt)
]

#if toc {
  outline(
    title: "Contents",
    depth: 2,
  )
  v(1fr)
}

#if ai_disclaimer {
  align(center)[
    #box(width: 90%)[
      _Generative AI tools were not used for assistance with this assessment task._
    ]
  ]
}

// assignment goes here

#newquestion[This is a template question.]
Here's the solution to it!

#newsubquestion[Here's another.]
I wonder what the answer is?



// bibliography (if using)

#if bib {
  bibliography("resources/ref.bib", style: "resources/bibstyles/apa.csl")
}
