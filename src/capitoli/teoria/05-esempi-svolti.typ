#import "/styles/didattica.typ": *

= Esempi svolti <cap4>

#nota[


In questa pagina trovi tre esempi svolti. Per ciascun problema partiamo dai dati, individuiamo i calcoli necessari e seguiamo il diagramma di flusso dall'inizio alla fine.

]

== Esempio 1 — Calcolare l'area di un quadrato

*Problema:* ricevere la misura del lato di un quadrato, calcolare l'area e mostrare il risultato.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Descrizione]),
[*Input*],
[La misura del lato, per esempio 4 cm],
[*Elaborazione*],
[area = lato × lato],
[*Output*],
[L'area calcolata: 16 cm²]
)
]

=== Scriviamo il diagramma

#figura("/assets/svg/teoria-diagrammi-flusso/diagramma-area-quadrato.svg", 100mm, alt: "Diagramma: Area di un quadrato; INIZIO; Leggi lato; area = lato × lato; Mostra area; FINE; Le frecce indicano l'ordine dei passaggi..")

#didascalia[Diagramma di flusso per calcolare l'area di un quadrato]

#nota[Le frecce indicano l’ordine dei passaggi.

*Da ricordare:* il lato deve essere ricevuto prima di poter calcolare l'area. Il risultato viene mostrato solo dopo il calcolo.

]


#pagebreak()
== Esempio 2 — Calcolare la somma di due numeri

*Problema:* chiedere due numeri, calcolare la loro somma e visualizzare il risultato.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Descrizione]),
[*Input*],
[Due numeri, per esempio 7 e 5],
[*Elaborazione*],
[somma = numero1 + numero2],
[*Output*],
[La somma: 12]
)
]

=== Scriviamo il diagramma

#figura("/assets/svg/teoria-diagrammi-flusso/diagramma-somma-due-numeri.svg", 100mm, alt: "Diagramma: Somma di due numeri; INIZIO; Leggi numero1; Leggi numero2; somma = numero1 + numero2; Mostra somma; FINE; Prima si acquisiscono entrambi i numeri, poi si calcola la somma..")

#didascalia[Diagramma di flusso per calcolare la somma di due numeri]

#nota[*Da ricordare:* se un calcolo richiede due dati, entrambi devono essere acquisiti prima di eseguire l'operazione.

]


#pagebreak()
== Esempio 3 — Calcolare il prezzo finale dopo uno sconto

*Problema:* un prodotto ha un prezzo iniziale. Il programma chiede anche la percentuale di sconto, calcola lo sconto e mostra il prezzo finale.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Descrizione]),
[*Input*],
[Prezzo iniziale = 23 €; percentuale di sconto = 10],
[*Elaborazione 1*],
[sconto = prezzo × percentuale / 100 = 2,30 €],
[*Elaborazione 2*],
[prezzo\_finale = prezzo − sconto = 20,70 €],
[*Output*],
[Prezzo finale = 20,70 €]
)
]

=== Scriviamo il diagramma

#figura("/assets/immagini/teoria-diagrammi-flusso/811b4a36-f356-4fe2-8818-45ca1ea99374.png", 100mm, alt: "Inizio; leggi prezzo; sconto = prezzo × 10 / 100; prezzo_finale = prezzo − sconto; mostra prezzo_finale; fine. Questo diagramma applica uno sconto fisso del 10%.")
#richiamo[*Nota sul diagramma:* qui la percentuale è fissata al 10%. Per il caso generale descritto nel testo occorre leggere anche la percentuale e usarla al posto di 10 nel calcolo.]

#nota[*Da ricordare:* il prezzo e la percentuale sono entrambi input. Se il prezzo è 23 € e la percentuale è 10, lo sconto è 2,30 € e il prezzo finale è 20,70 €.

I blocchi di elaborazione sono 2, perchè sono necessari due calcoli.

]


#pagebreak()
== Consigli pratici

=== Controlla il diagramma

Parti da INIZIO e segui le frecce fino a FINE. A ogni passaggio, controlla questi elementi.

#table(
  columns: (29%, 71%), inset: (x: 8pt, y: 7pt), align: left,
  table.header([*Elemento*], [*Domanda di controllo*]),
  [#etichetta[Estremi]], [Ho inserito sia il blocco INIZIO sia il blocco FINE?],
  [#etichetta[Input e output]], [Ho usato un parallelogramma ogni volta che leggo o mostro un dato?],
  [#etichetta[Calcoli]], [Ho usato un rettangolo per ogni operazione?],
  [#etichetta[Frecce]], [I blocchi sono collegati? Posso seguire il percorso dall’alto in basso, dall’inizio alla fine?],
)

#messaggio[Regola fondamentale: usare sempre gli stessi nomi]

Assegna un nome chiaro a ogni dato che leggi. Usa quel nome nei calcoli e, quando mostri un risultato, usa il nome con cui lo hai calcolato.

=== Confronta i due esempi

Entrambi i diagrammi calcolano l’area di un quadrato. Segui il nome del risultato dal calcolo all’output.

#table(
  columns: (24%, 38%, 38%), inset: (x: 8pt, y: 8pt), align: left,
  table.header([*Fase*], [*Esempio corretto*], [*Esempio da evitare*]),
  [#etichetta[Input]], [Leggi `lato`], [Leggi `lato`],
  [#etichetta[Elaborazione]], [`area = lato × lato`], [`superficie = lato × lato`],
  [#etichetta[Output]], [Mostra `area`], [Mostra `area`],
)

#block(width: 100%, above: 15pt, inset: 12pt, fill: blu.lighten(95%), breakable: false)[
  #etichetta[Trova e correggi l’errore]
  #v(4pt)
  Nel primo esempio il calcolo assegna il risultato ad `area` e l’output mostra proprio `area`. Nel secondo il risultato si chiama `superficie`, ma l’output chiede `area`, che non ha ricevuto alcun valore.

  *Come correggeresti l’output cambiando un solo nome?*
]
