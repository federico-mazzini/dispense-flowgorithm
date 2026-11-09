#import "/styles/didattica.typ": *

= Le decisioni e il rombo <cap5>

#nota[


Il *rombo* rappresenta una decisione: il programma controlla una condizione e, in base alla risposta, sceglie quale percorso seguire.

]

Il nome *blocco di selezione* significa che il programma può scegliere quale istruzione eseguire. Nel rombo scriviamo una domanda a cui si può rispondere *SÌ* oppure *NO*: questa domanda si chiama *condizione*.

== A cosa serve il blocco di selezione?

A volte un programma deve scegliere cosa fare in base a una situazione. Il rombo permette di *selezionare quale strada seguire*.

- Se la condizione è vera, il programma segue il percorso *SÌ*.
- Se la condizione è falsa, il programma segue il percorso *NO*.

Per esempio, un programma legge l’età di una persona e deve dire se è maggiorenne. Nel rombo scriviamo *«L’età è almeno 18 anni?»*. Con 20 anni il programma segue la freccia SÌ e mostra «Maggiorenne»; con 15 anni segue la freccia NO e mostra «Minorenne». Il rombo serve a scegliere il messaggio adatto al dato letto.

Il programma segue *una sola delle due strade* ogni volta che incontra il rombo.

Le due strade possono portare a operazioni o messaggi diversi e, in seguito, anche ricongiungersi.

#figura("/assets/svg/teoria-diagrammi-flusso/rombo-condizione-si-no.svg", 100mm, alt: "Diagramma: condizione; SÌ; NO.")

#pagebreak()
== Che cos'è la condizione in un blocco di selezione?

Una *condizione* è una domanda precisa che il programma controlla. La risposta è sempre e soltanto una di queste due:

- *SÌ* — la condizione è vera.
- *NO* — la condizione è falsa.

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Condizione nel rombo],[La domanda che ci poniamo]),
[`numero > 0?`],
[Il numero è maggiore di zero?],
[`eta >= 18?`],
[L'età è almeno 18 anni?],
[`prezzo < 50?`],
[Il prezzo è inferiore a 50 euro?],
[`voto >= 6?`],
[Il voto è almeno 6?]
)
]

Per esempio, se `numero = 4`, alla domanda `numero > 0?` la risposta è *SÌ*. Se `numero = -2`, la risposta è *NO*.

#etichetta[Attenzione ai confronti]

- `eta > 18` significa *maggiore di 18*: il valore 18 non è incluso.
- `eta >= 18` significa *maggiore o uguale a 18*: il valore 18 è incluso.

#richiamo[*Attenzione:* la risposta alla condizione non è un numero o una frase libera: è sempre *SÌ* oppure *NO*. Il programma userà questa risposta per scegliere il percorso.

]


#figura("/assets/svg/teoria-diagrammi-flusso/rombo-numero-positivo.svg", 100mm, alt: "Rombo con la condizione numero > 0?; ramo SÌ se il numero è maggiore di zero; ramo NO altrimenti.")

#pagebreak()
== Esempio svolto — Un numero è positivo?

*Problema:* ricevere un numero e comunicare se è maggiore di zero.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Descrizione]),
[*Input*],
[Un numero, chiamato `numero`],
[*Decisione*],
[`numero > 0?`],
[*Output se SÌ*],
[Mostra «Il numero è positivo»],
[*Output se NO*],
[Mostra «Il numero non è positivo»]
)
]

=== Diagramma di flusso

#figura("/assets/svg/teoria-diagrammi-flusso/diagramma-numero-positivo-con-input.svg", 100mm, alt: "Diagramma: INIZIO; Leggi numero; numero > 0?; SÌ; NO; Mostra “Il numero è positivo”; Mostra “Il numero non è positivo”; FINE.")

#didascalia[Diagramma di flusso: numero positivo]

#nota[*Da ricordare:* zero non è un numero positivo. Se `numero = 0`, la condizione `numero > 0` è falsa e si segue il ramo *NO*.

]

#pagebreak()
== Esempio svolto — Maggiorenne o minorenne?

*Problema:* chiedere l'età e dire se una persona ha almeno 18 anni, per stabilire se può entrare o meno.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Descrizione]),
[*Input*],
[Età, chiamata `eta`],
[*Decisione*],
[`eta >= 18?`],
[*Output se SÌ*],
[Mostra «Puoi entrare»],
[*Output se NO*],
[Mostra «Non puoi entrare»]
)
]

=== Diagramma di flusso

#figura("/assets/svg/teoria-diagrammi-flusso/diagramma-eta-maggiorenne-con-input.svg", 100mm, alt: "Diagramma: INIZIO; Leggi eta; eta >= 18?; SÌ; NO; Mostra “Puoi entrare”; Mostra “Non puoi entrare”; FINE.")

#didascalia[Diagramma di flusso: età almeno 18 anni]

=== Proviamo con alcuni valori

#block(breakable: false)[
#table(columns: (1fr, 1fr, 1fr, 1fr),
 table.header([Valore di `eta`],[La condizione `eta >= 18?`],[Percorso],[Messaggio]),
[20],
[Vera],
[*SÌ*],
[Puoi entrare],
[16],
[Falsa],
[*NO*],
[Non puoi entrare],
[18],
[Vera],
[*SÌ*],
[Puoi entrare]
)
]

#nota[*Attenzione al simbolo:* `>=` significa «maggiore o uguale». Per questo motivo, anche 18 soddisfa la condizione.

]

#pagebreak()
== Esempio svolto — Numeri uguali, maggiori o minori?

*Problema:* ricevere due numeri, chiamati `a` e `b`, e comunicare se il primo è maggiore del secondo, se il secondo è maggiore del primo oppure se i due numeri sono uguali.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%),
 table.header([Fase],[Descrizione]),
[*Input*],
[Due numeri: `a` e `b`],
[*Prima decisione*],
[`a > b?`],
[*Seconda decisione*],
[Se la risposta alla prima è NO, controlla `a < b?`],
[*Output se SÌ alla prima*],
[Mostra «a è maggiore di b»],
[*Output se NO alla prima e SÌ alla seconda*],
[Mostra «b è maggiore di a»],
[*Output se NO a entrambe*],
[Mostra «a e b sono uguali»]
)
]

=== Perché servono due blocchi di selezione?

Un singolo blocco di selezione permette di distinguere soltanto *due casi*: SÌ e NO. In questo problema, invece, dobbiamo comunicare *tre risultati diversi*.

Per questo usiamo una seconda selezione nel percorso NO della prima:

+ Se `a > b` è vera, sappiamo già che `a` è maggiore di `b`.
+ Se è falsa, controlliamo se `a < b`.
+ Se anche `a < b` è falsa, i numeri sono uguali.

#pagebreak()
=== Diagramma di flusso svolto

#figura("/assets/svg/teoria-diagrammi-flusso/confronto-due-numeri.svg", 135mm, alt: "Diagramma: INIZIO; Leggi i due numeri; a e b; a > b?; SÌ; a è maggiore di b; NO; a < b?; SÌ; b è maggiore di a; NO; a e b sono uguali; FINE.")

=== Proviamo con alcuni valori

#block(breakable: false)[
#table(columns: (1fr, 1fr, 1fr, 1fr, 1fr),
 table.header([`a`],[`b`],[Prima condizione `a > b?`],[Seconda condizione, se serve],[Risultato]),
[9],
[4],
[SÌ],
[Non serve],
[a è maggiore di b],
[3],
[8],
[NO],
[`3 < 8` → SÌ],
[b è maggiore di a],
[5],
[5],
[NO],
[`5 < 5` → NO],
[a e b sono uguali]
)
]

#pagebreak()
=== Non solo matematica :)

#figura("/assets/immagini/teoria-diagrammi-flusso/bb02bbf0-04ec-4d29-887f-6bb388fbf5e7.png", 100mm, alt: "Diagramma umoristico in inglese: hai un problema? Se no, non preoccuparti. Se sì, puoi fare qualcosa? In entrambi i casi conclude: non preoccuparti.")

#figura("/assets/immagini/teoria-diagrammi-flusso/image.png", 82mm, alt: "Diagramma umoristico in inglese: dovresti dirlo ad alta voce? Una serie di decisioni sul contesto, sulle persone presenti e sulle conseguenze porta a parlare oppure tacere.")


*Ripasso:* #link(<cap2>)[Input, elaborazione e output] · #link(<cap3>)[I blocchi fondamentali] · #link(<cap4>)[Esempi svolti]
