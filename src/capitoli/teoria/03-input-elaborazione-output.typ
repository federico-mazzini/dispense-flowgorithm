#import "/styles/didattica.typ": *

= Input, elaborazione e output <cap2>

== Come funziona un programma?

Molti programmi possono essere descritti attraverso tre momenti: *ricevono dei dati, li elaborano e producono un risultato*.

#block(width: 100%, above: 14pt, below: 15pt)[
  #align(center)[
    #etichetta[INPUT → ELABORAZIONE → OUTPUT]
    #v(3pt)
    *Dati in ingresso → Operazioni sui dati → Risultato in uscita*
  ]
]

#fase([INPUT], [
*I dati in ingresso*

Sono le informazioni che servono al programma per svolgere un compito.

*Esempi:* una misura, un prezzo, due numeri inseriti da una persona.
])

#fase([ELABORAZIONE], [
*Le operazioni sui dati*

Sono i calcoli o le trasformazioni che il programma esegue sui dati ricevuti.

*Esempi:* sommare, moltiplicare, confrontare, ordinare o cercare informazioni.
])

#fase([OUTPUT], [
*Il risultato in uscita*

È l'informazione che il programma restituisce dopo l'elaborazione.

*Esempi:* un'area calcolata, una media, un prezzo finale, un messaggio o un grafico.
])

#nota[*Da ricordare:* l'input non deve necessariamente essere digitato da una persona. Un programma può ricevere dati anche da un sensore, da un file o da un altro programma.

]

== Fermiamoci un momento

#nota[


*Domanda da discutere in classe:* quando usiamo una calcolatrice per fare 8 + 5, quali sono l'input, l'elaborazione e l'output?

Prima prova a rispondere a voce, poi controlla:

- *Input:* i numeri 8 e 5.
- *Elaborazione:* sommare i due numeri.
- *Output:* il risultato 13.
]


#pagebreak()
== Esempio guidato: l'area di un quadrato

*Problema:* vogliamo creare un programma che calcoli l'area di un quadrato conoscendo la misura del lato.

#nota[


Prima di leggere la soluzione, prova a rispondere:

- Quali dati deve conoscere il programma?
- Quali operazioni deve eseguire?
- Quale risultato deve mostrare?
]

#fase([INPUT], [
Lato del quadrato

Esempio: 5 cm
])

#fase([ELABORAZIONE], [
Area = Lato x Lato

Esempio = 5cm x 5cm
])

#fase([OUTPUT], [
Area

Esempio: 25 cm²
])

#nota[*Attenzione:* il programma deve essere generale, non specifico su un esempio.
Non creiamo un programma per calcolare l’area di un quadrato con lato 5cm.
Creiamo un programma per calcolare l’area di un quadrato con lato di qualsiasi misura.

]

#richiamo[*Attenzione:* l'output non è l'operazione che eseguiamo, ma il risultato che otteniamo.

]

#pagebreak()
== Altri esempi con la stessa struttura

=== Calcolare l'area di un rettangolo

*Problema:* calcolare l'area conoscendo base e altezza.

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Che cosa contiene?]),
[*Input*],
[Base = 5 cm; altezza = 3 cm.],
[*Elaborazione*],
[Moltiplicare base per altezza: area = base × altezza.],
[*Output*],
[5 × 3 = *15 cm²*.]
)
]

=== Calcolare la media di due numeri

*Problema:* calcolare la media di due numeri.

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Che cosa contiene?]),
[*Input*],
[I due numeri: 6 e 8.],
[*Elaborazione*],
[Sommare i numeri e dividere la somma per 2: (6 + 8) ÷ 2.],
[*Output*],
[La media è *7*.]
)
]

=== Calcolare un prezzo scontato

*Problema:* un prodotto costa *23 €* e ha uno sconto del *10%*. Qual è il prezzo finale?

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Che cosa succede?]),
[*Input*],
[Prezzo iniziale: 23 €; sconto: 10%.],
[*Elaborazione*],
[Calcolare lo sconto: 23 × 10 ÷ 100 = 2,30 €. Sottrarlo dal prezzo: 23 − 2,30 = 20,70 €.],
[*Output*],
[Il programma mostra: «Il prezzo finale è *20,70 €*».]
)
]


#pagebreak()
== Come riconoscere le tre fasi

#etichetta[Prima di iniziare]
#block(above: 4pt, below: 16pt)[
  *Ho capito quale problema devo risolvere?* Prova a spiegarlo a parole tue e a fare un esempio.
]

Quando il problema è chiaro, segui le domande nell’ordine. Ogni riga corrisponde a una fase.

#table(
  columns: (30%, 70%),
  inset: (x: 8pt, y: 11pt),
  align: left,
  table.header([*Fase*], [*Domande guida*]),
  [#etichetta[1. Input]],
  [*Che cosa conosco o devo chiedere?*

Quali dati sono necessari per risolvere il problema?],
  [#etichetta[2. Elaborazione]],
  [*Che cosa devo fare con quei dati?*

Quali operazioni, formule o confronti devo eseguire?],
  [#etichetta[3. Output]],
  [*Che cosa devo ottenere?*

Quale risultato deve essere restituito o mostrato?],
)

#block(width: 100%, above: 18pt, inset: 12pt, fill: blu.lighten(95%), breakable: false)[
  #etichetta[Metti insieme le tre fasi]
  #v(4pt)
  Prova a raccontare il problema completando questa frase:

  «Ricevo #box(width: 24mm, line(length: 100%, stroke: 0.5pt + blu)), eseguo #box(width: 24mm, line(length: 100%, stroke: 0.5pt + blu)) e ottengo #box(width: 24mm, line(length: 100%, stroke: 0.5pt + blu)).»

  Se riesci a completarla, probabilmente hai individuato le tre fasi.
]
