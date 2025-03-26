#import "/src/lib.typ" as adaptable-pset: *

#let titulo = "GUIA 1"
#let autor = "beekkles"
#let course-id = "Álgebra lineal computacional"
#let semester = "1C2025"
#set enum(numbering: "a)")

#show: setup.with(
  title: titulo,
  author: autor,
  course-id: course-id,
  semester: semester,
)

#ej(title: "24.1.17", color: blue)[
  Let $F ⊆ E$ be a ﬁeld extension. Assume that $f, g ∈ F [x]$ are distinct, monic, and irreducible. Show that $f$ and $g$ cannot have a common root in $E$.
]
