// linear programs
#let opt(..content) = {
  math.mat(
    delim: ("{", none),
    align: right,
    ..content)
}

// equation labelling
#let circ(num) = {
  pad(left: 1pt, right: 1pt)[
    #circle(stroke: 0.5pt, inset: 0.1em)[
      #set text(size: 8pt)
      #set align(center + horizon)
      #num
    ]
  ]
}

// quick vector bold
#let em(var) = {
  $bold(upright(var))$
}

// cursive
#let scr(it) = math.class("normal", box({
  show math.equation: set text(stylistic-set: 1)
  $cal(it)$
}))
