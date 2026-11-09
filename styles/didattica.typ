// Componenti per i contenuti di informatica, con lo stesso stile del template.
#import "template.typ": blu, grigio, bordo, riquadro

#let etichetta(body) = text(weight: "bold", fill: blu, body)
#let nota(body) = riquadro(none, body)
#let definizione(termine, body) = riquadro(termine, body)
#let richiamo(body) = riquadro(none, body)
#let laboratorio(body) = riquadro([Sperimenta in laboratorio], body)
#let fase(termine, body) = riquadro(termine, body)
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
