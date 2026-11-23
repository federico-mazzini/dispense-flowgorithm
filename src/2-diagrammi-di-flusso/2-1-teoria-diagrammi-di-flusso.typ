#import "/styles/template.typ": dispensa
#import "/styles/didattica.typ": *

#show: dispensa.with(
  titolo: "Diagrammi di flusso",
  sottotitolo: "Teoria ed esempi svolti.",
  numerazione: "1.1",
  spazio-paragrafi: 1.1em,
  interlinea: 0.68em,
)

#outline(title: [Contenuti], depth: 1)
#pagebreak()

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
#pagebreak()

= I blocchi fondamentali <cap3>

#nota[


Un *diagramma di flusso* rappresenta graficamente i passaggi necessari per risolvere un problema. Ogni forma ha un significato preciso: riconoscere i blocchi ci aiuta a trasformare un problema in una sequenza ordinata di istruzioni.

]

== I tre blocchi fondamentali

=== Inizio e Fine — forma ovale

#simbolo([
#figura("/assets/immagini/teoria-diagrammi-flusso/inizio-fine.jpg", 48mm, alt: "Diagramma: INIZIO / FINE; Forma ovale.")
], [
Il blocco *Start/Fine* indica dove comincia e dove termina il diagramma.

- *INIZIO*: è il punto di partenza.
- *FINE*: indica che il procedimento è terminato.

*Importante:* un diagramma deve sempre avere un inizio e una fine.
])

=== Input e Output — forma a parallelogramma

#simbolo([
#figura("/assets/immagini/teoria-diagrammi-flusso/input-output.jpg", 48mm, alt: "Diagramma: INPUT / OUTPUT; Forma: parallelogramma.")
], [
Il parallelogramma rappresenta un'operazione di *ingresso o uscita dei dati*.

- *Input*: il programma riceve o legge un dato. Esempio: chiedere all'utente la misura del lato.
- *Output*: il programma comunica o mostra un risultato. Esempio: visualizzare l'area calcolata.

*Importante:* i dati che sono usati poi nell’elaborazione, devono esistere nel blocco di input.
])

=== Elaborazione — forma rettangolare

#simbolo([
#figura("/assets/immagini/teoria-diagrammi-flusso/blocco-elaborazione.jpg", 48mm, alt: "Diagramma: ELABORAZIONE; Forma: rettangolo.")
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

#figura("/assets/immagini/teoria-diagrammi-flusso/quadrato-guidato.jpg", 100mm, alt: "Diagramma: Area di un quadrato; INIZIO; Leggi lato; area = lato × lato; Mostra area; FINE; Ovale: inizio/fine · Parallelogramma: input/output; Rettangolo: elaborazione · Frecce: ordine dei passaggi.")


#didascalia[Ovale: inizio/fine · Parallelogramma: input/output \ Rettangolo: elaborazione · Frecce: ordine dei passaggi]


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
#pagebreak()

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

#figura("/assets/immagini/teoria-diagrammi-flusso/area-quadrato.jpg", 100mm, alt: "Diagramma: Area di un quadrato; INIZIO; Leggi lato; area = lato × lato; Mostra area; FINE; Le frecce indicano l'ordine dei passaggi..")

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

#figura("/assets/immagini/teoria-diagrammi-flusso/somma-numeri.jpg", 100mm, alt: "Diagramma: Somma di due numeri; INIZIO; Leggi numero1; Leggi numero2; somma = numero1 + numero2; Mostra somma; FINE; Prima si acquisiscono entrambi i numeri, poi si calcola la somma..")

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

#figura("/assets/immagini/teoria-diagrammi-flusso/sconto-fisso.jpg", 100mm, alt: "Inizio; leggi prezzo; sconto = prezzo × 10 / 100; prezzo_finale = prezzo − sconto; mostra prezzo_finale; fine. Questo diagramma applica uno sconto fisso del 10%.")
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
#pagebreak()

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

#figura("/assets/immagini/teoria-diagrammi-flusso/rombo-condizione.jpg", 100mm, alt: "Diagramma: condizione; SÌ; NO.")

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


#figura("/assets/immagini/teoria-diagrammi-flusso/numero-positivo.jpg", 100mm, alt: "Rombo con la condizione numero > 0?; ramo SÌ se il numero è maggiore di zero; ramo NO altrimenti.")

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

#figura("/assets/immagini/teoria-diagrammi-flusso/verifica-positivita.jpg", 100mm, alt: "Diagramma: INIZIO; Leggi numero; numero > 0?; SÌ; NO; Mostra “Il numero è positivo”; Mostra “Il numero non è positivo”; FINE.")

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

#figura("/assets/immagini/teoria-diagrammi-flusso/verifica-maggioreta.jpg", 100mm, alt: "Diagramma: INIZIO; Leggi eta; eta >= 18?; SÌ; NO; Mostra “Puoi entrare”; Mostra “Non puoi entrare”; FINE.")

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

#figura("/assets/immagini/teoria-diagrammi-flusso/confronto-numeri.jpg", 135mm, alt: "Diagramma: INIZIO; Leggi i due numeri; a e b; a > b?; SÌ; a è maggiore di b; NO; a < b?; SÌ; b è maggiore di a; NO; a e b sono uguali; FINE.")

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

#figura("/assets/immagini/teoria-diagrammi-flusso/preoccupazione.jpg", 100mm, alt: "Diagramma umoristico in inglese: hai un problema? Se no, non preoccuparti. Se sì, puoi fare qualcosa? In entrambi i casi conclude: non preoccuparti.")

#figura("/assets/immagini/teoria-diagrammi-flusso/parlare-tacere.jpg", 82mm, alt: "Diagramma umoristico in inglese: dovresti dirlo ad alta voce? Una serie di decisioni sul contesto, sulle persone presenti e sulle conseguenze porta a parlare oppure tacere.")


*Ripasso:* #link(<cap2>)[Input, elaborazione e output] · #link(<cap3>)[I blocchi fondamentali] · #link(<cap4>)[Esempi svolti]
