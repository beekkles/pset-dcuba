#import "@preview/showybox:2.0.2": showybox

#let ej_counter = counter("ejercicio")

#let ej(title: "", color: green, ..body) = {
  [== Ejercicio #ej_counter.step() #context {ej_counter.display()}]
  showybox(
    frame: (
      border-color: color.darken(10%),
      title-color: color.lighten(85%),
      body-color: color.lighten(90%)
    ),
    title-style: (
      color: black,
      weight: "bold",
    ),
    title: title,
    ..body
  )
}

#let setup(
  title: "Título",
  author: "Autor",
  course-id: "Materia",
  semester: "Cuatrimestre",
  accent-color: rgb("#000000"),
  body,
) = {
  // Document Metadata
  set document(title: title, author: author)

  set page(paper: "us-letter")

  // Cover Page (centered vert + horiz)
  align(center + horizon)[
    #strong(text(size: 24pt, fill: accent-color)[#title])

    #text(size: 18pt)[#course-id]

    #v(24em)

    #strong(text(size: 18pt)[#author])
  ]

  // Page Layout (incl. Header, Footer)
  set page(
    header: [
      #author #h(1fr) #title
    ],
    footer: [
      #align(center)[Página #context counter(page).display() de #context counter(page).final().first()]
    ],
  )

  pagebreak()

  // Header and Footer Info
  // Main content
  body
}

