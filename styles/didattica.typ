// Componenti per i contenuti di informatica, con lo stesso stile del template.
#import "template.typ": blu, grigio, bordo, riquadro

#let etichetta(body) = text(weight: "bold", fill: blu, body)
#let nota(body) = block(width: 100%, above: 9pt, below: 9pt, body)
#let definizione(termine, body) = block(breakable: false)[
  #block(below: 8pt, sticky: true)[#etichetta(termine)]
  #body
]
#let richiamo(body) = riquadro(none, body)
// Attività pratica per rinforzare la teoria: un solo bordo completo.
#let sperimenta(body) = block(
  width: 100%, breakable: false, inset: 12pt,
  stroke: 1pt + blu, above: 12pt, below: 12pt,
)[
  #set par(justify: false)
  #block(below: 8pt, sticky: true)[#etichetta[Sperimenta in laboratorio]]
  #body
]
#let messaggio(body) = block(width: 100%, above: 16pt, below: 16pt, breakable: false)[
  #set par(justify: false)
  #align(center)[#text(size: 14pt, weight: "bold", fill: blu)[#body]]
]
#let fase(termine, body) = block(breakable: false, above: 24pt, below: 18pt)[
  #etichetta(termine)
  #v(2pt)
  #body
]
#let confronto(a, b) = block(breakable: false)[
  #grid(columns: (1fr, 1fr), column-gutter: 9mm, a, b)
]
#let simbolo(immagine, spiegazione) = block(breakable: false, width: 100%)[
  #grid(columns: (48mm, 1fr), column-gutter: 7mm, immagine, spiegazione)
]
#let didascalia(body) = align(center, text(size: 9pt, fill: grigio, body))
#let figura(percorso, larghezza, alt: none) = block(
  width: 100%, above: 9pt, below: 9pt, breakable: false,
  // Le piccole icone dei blocchi restano con la spiegazione successiva.
  sticky: larghezza <= 30mm,
)[
  #align(center)[#image(percorso, width: larghezza, alt: alt)]
]
#let esercizio(body) = block(above: 9pt, below: 9pt, breakable: false, body)
