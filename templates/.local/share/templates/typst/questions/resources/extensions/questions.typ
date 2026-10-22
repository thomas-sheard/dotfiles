// questions.typ
// #import "resources/questions.typ": newquestion, newsubquestion, newsubsubquestion, template
// #show: template

// config 

#let page-margin = 1in
#let par-spacing = 0.8em // paragraph gap in the body; question-padding only shows if it exceeds this
#let question-padding = 2em // gap above a question that follows a solution
#let question-gap = 1em // gap below a question / between consecutive questions
#let default-reserve = 4em // room a question demands below itself before it may stay on a page

#let label-width = 0.9in // width allocated to the margin label
#let label-gap = 0.1in // gap between the label and the question body
#let label-margin = label-width + label-gap// + 0.15in   // left page margin

#let label-solns = true
#let soln-label = text(style: "italic", fill: black.transparentize(00%))[Soln.]

// state tracking
// false = start of document, or inside solution content
// "inside" = inside a question body
// "after" = a question has just ended and no solution content has followed yet
#let qstate = state("questions:state", false)

#let margin-label(label, pos: left) = place(
  pos, dx: -(label-width + label-gap),
  box(width: label-width, align(right, label)),
)

#let flow = counter("questions:flow")

#let mark-content(it) = {
  flow.step()
  qstate.update(false)
  it
}
// numbering

#let counters = (
  counter("question"),
  counter("subquestion"),
  counter("subsubquestion"),
)

#let own-fmt = ("Q1.", "(a)", "i.") // how a level displays as the final part
#let prefix-fmt = ("1", "(a)", "i.") // how it displays as an ancestor

#let make-label(level) = context {
  range(level + 1).map(i => counters.at(i).display(
    if i == level { own-fmt.at(i) } else { prefix-fmt.at(i) }
  )).join()
}

// question block
#let question-block(label, body, reserve) = {
  context if qstate.get() != "after" { v(question-padding, weak: true) }
  [#metadata(none) <questions-q-start>]    // marks where this question begins

  block(width: 100%, breakable: false, above: 0pt, below: 0pt)[
    #margin-label(label, pos: top + left)
    #if body == [] { [#sym.zws] } else { body }
    #v(reserve)
  ]

  v(question-gap - reserve)
  qstate.update("after")

  if label-solns {
    context {
      let now = flow.get()
      let next = query(selector(<questions-q-start>).after(here()))
      let then = if next.len() > 0 { flow.at(next.first().location()) } else { flow.final() }
      if then != now { margin-label(soln-label) }
    }
  }
}

#let new-at(level, body, reserve: default-reserve) = {
  counters.at(level).step()
  for c in counters.slice(level + 1) { c.update(0) }
  question-block(make-label(level), body, reserve)
}

// exposed functions

#let newquestion(body, reserve: default-reserve) = new-at(0, body, reserve: reserve)
#let newsubquestion(body, reserve: default-reserve) = new-at(1, body, reserve: reserve)
#let newsubsubquestion(body, reserve: default-reserve) = new-at(2, body, reserve: reserve)

// for questions with no preamble. advances the number, shows nothing
#let skipquestion() = {
  counters.at(0).step()
  for c in counters.slice(1) { c.update(0) }
}

// delineate the end of question content for hybrid docs
#let endsoln() = {
  [#metadata(none) <questions-q-start>]
  qstate.update(false)
}

// document template

#let template(body) = {
  set page(margin: (left: label-margin, rest: page-margin))
  set par(spacing: par-spacing)

  // anything that counts as "solution content" resets the question state
  show par: mark-content
  show math.equation.where(block: true): mark-content
  show heading: it => { endsoln(); mark-content(it) }
  show figure: mark-content
  show list: mark-content
  show enum: mark-content
  show table: mark-content
  show image: mark-content
  show raw.where(block: true): mark-content
  show quote.where(block: true): mark-content
  show terms: mark-content

  body
}
