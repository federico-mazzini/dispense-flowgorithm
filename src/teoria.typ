#import "/styles/template.typ": dispensa
#show: dispensa.with(
  titolo: "Programmi e diagrammi di flusso",
  sottotitolo: "Teoria ed esempi svolti.",
  numerazione: "1.1",
  spazio-paragrafi: 1.1em,
  interlinea: 0.68em,
)

#outline(title: [Contenuti], depth: 1)
#pagebreak()

#include "capitoli/teoria/01-programmi-e-software.typ"
#pagebreak()

#include "capitoli/teoria/02-algoritmi.typ"
#pagebreak()

#include "capitoli/teoria/03-input-elaborazione-output.typ"
#pagebreak()

#include "capitoli/teoria/04-blocchi-fondamentali.typ"
#pagebreak()

#include "capitoli/teoria/05-esempi-svolti.typ"
#pagebreak()

#include "capitoli/teoria/06-decisioni-e-rombo.typ"
