#import "/styles/didattica.typ": *

= I blocchi fondamentali <cap3>

#nota[


Un *diagramma di flusso* rappresenta graficamente i passaggi necessari per risolvere un problema. Ogni forma ha un significato preciso: riconoscere i blocchi ci aiuta a trasformare un problema in una sequenza ordinata di istruzioni.

]

== I tre blocchi fondamentali

=== Inizio e Fine — forma ovale

#simbolo([
#figura("/assets/svg/teoria-diagrammi-flusso/blocco_start_fine.svg", 48mm, alt: "Diagramma: INIZIO / FINE; Forma ovale.")
], [
Il blocco *Start/Fine* indica dove comincia e dove termina il diagramma.

- *INIZIO*: è il punto di partenza.
- *FINE*: indica che il procedimento è terminato.

*Importante:* un diagramma deve sempre avere un inizio e una fine.
])

=== Input e Output — forma a parallelogramma

#simbolo([
#figura("/assets/svg/teoria-diagrammi-flusso/blocco_input_output.svg", 48mm, alt: "Diagramma: INPUT / OUTPUT; Forma: parallelogramma.")
], [
Il parallelogramma rappresenta un'operazione di *ingresso o uscita dei dati*.

- *Input*: il programma riceve o legge un dato. Esempio: chiedere all'utente la misura del lato.
- *Output*: il programma comunica o mostra un risultato. Esempio: visualizzare l'area calcolata.

*Importante:* i dati che sono usati poi nell’elaborazione, devono esistere nel blocco di input.
])

=== Elaborazione — forma rettangolare

#simbolo([
#figura("/assets/svg/teoria-diagrammi-flusso/blocco_elaborazione.svg", 48mm, alt: "Diagramma: ELABORAZIONE; Forma: rettangolo.")
], [
Il rettangolo rappresenta un'*operazione eseguita sui dati*, per esempio un calcolo.

Esempi:

- calcolare l'area di un quadrato;
- sommare due numeri;
- calcolare il prezzo dopo uno sconto.
])


#pagebreak()
== Il primo diagramma di flusso: mettiamo insieme i blocchi

Riprendiamo il problema dell'area del quadrato: il programma legge la misura del lato, calcola l'area e mostra il risultato.

#nota[


*Prima di guardare lo schema, prova a ricostruire i passaggi:* da quale blocco si parte? Dove si inserisce il lato? In quale blocco si calcola l'area? Dove compare il risultato?

]

#figura("/assets/svg/teoria-diagrammi-flusso/diagramma-area-quadrato-blocchi-fondamentali.svg", 100mm, alt: "Diagramma: Area di un quadrato; INIZIO; Leggi lato; area = lato × lato; Mostra area; FINE; Ovale: inizio/fine · Parallelogramma: input/output; Rettangolo: elaborazione · Frecce: ordine dei passaggi.")


== Testo o diagramma?

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Nel testo],[Nel diagramma di flusso]),
[Scriviamo le fasi in una tabella o in un elenco.],
[Usiamo blocchi con forme convenzionali.],
[Descriviamo input, elaborazione e output.],
[Rappresentiamo le stesse fasi in sequenza.],
[Il collegamento tra i passaggi è spiegato dal testo o dall'ordine delle righe.],
[Le frecce mostrano visivamente l'ordine dei passaggi.]
)
]

#nota[*Importante:* non sono due metodi diversi per risolvere il problema. Sono due modi per descrivere lo stesso ragionamento. Il diagramma di flusso rende visibile il percorso da seguire.

]


*Collegamento con il materiale precedente:* #link(<cap2>)[Input, elaborazione e output] — ripassa il significato dei dati in ingresso, delle operazioni e dei risultati prima di disegnare il diagramma.
