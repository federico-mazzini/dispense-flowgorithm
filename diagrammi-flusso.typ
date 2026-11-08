// DIAGRAMMI DI FLUSSO — fonte: materiale Markdown e SVG fornito.
// Le frasi originali sono conservate; cambia soltanto la struttura tipografica.
#set document(title: "Diagrammi di flusso — esercizi", author: "Materiale didattico")
#let ink = rgb("#28292a")
#let rust = rgb("#a4513d")
#let navy = rgb("#254353")
#let faint = rgb("#d6d8d9")
#set page(paper: "a4", margin: (top: 22mm, bottom: 21mm, left: 23mm, right: 22mm),
  footer: context [
    #line(length: 100%, stroke: 0.35pt + faint)
    #v(3pt)
    #grid(columns: (1fr, auto),
      [#text(font: "Inter", size: 7.7pt, fill: navy)[DIAGRAMMI DI FLUSSO · ESERCIZI]],
      [#text(font: "Inter", size: 7.7pt, fill: navy)[#counter(page).display()]],
    )
  ],
)
#set text(font: "Linux Libertine O", size: 11pt, fill: ink, lang: "it")
#set par(justify: true, leading: 0.58em, spacing: 0.66em)
#set heading(numbering: none)
#show strong: set text(fill: navy)
#show heading.where(level: 1): it => block(above: 20pt, below: 11pt, breakable: false)[
  #text(font: "Inter", size: 17.5pt, weight: "semibold", fill: rust)[#it.body]
]
#show heading.where(level: 2): it => block(above: 15pt, below: 8pt, breakable: false)[
  #text(font: "Inter", size: 12.5pt, weight: "semibold", fill: navy)[#it.body]
]
#show heading.where(level: 3): it => block(above: 11pt, below: 7pt, breakable: false)[
  #text(font: "Inter", size: 11.3pt, weight: "semibold", fill: navy)[#it.body]
]
#let figura(path, larghezza) = block(above: 7pt, below: 10pt, breakable: false)[
  #align(center)[#image(path, width: larghezza)]
]
#text(font: "Inter", size: 8.8pt, weight: "medium", fill: rust)[INFORMATICA / DISPENSA]
#v(7pt)
#text(font: "Inter", size: 25pt, weight: "semibold", fill: navy)[Esercizi diagrammi di flusso]
#v(6pt)
#line(length: 39%, stroke: 1.4pt + rust)
#v(15pt)




#outline(title: [Contenuti], depth: 1)

#pagebreak()
= Fase 1 — Sequenza, input, calcolo e output

Per ogni esercizio, realizzare un diagramma di flusso completo con INIZIO, INPUT, eventuali operazioni, eventuali decisioni, OUTPUT e FINE. Utilizzare i blocchi con la forma corretta e collegarli con frecce. Quando è presente un rombo, indicare chiaramente i percorsi SÌ e NO.

#block(above: 20pt, below: 10pt, breakable: false)[
== 1. Perimetro di un rettangolo

Realizzare un diagramma di flusso che legga la base e l'altezza di un rettangolo, calcoli il perimetro e visualizzi il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 2. Calcolo di uno sconto

Realizzare un diagramma di flusso che legga il prezzo iniziale di un prodotto e la percentuale di sconto, calcoli l'importo dello sconto e il prezzo finale, quindi visualizzi il prezzo da pagare.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 3. Divisione del conto

Realizzare un diagramma di flusso che legga l'importo totale di un conto e il numero dei partecipanti, calcoli la quota da pagare per ciascuna persona e visualizzi il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 4. Somma di due numeri

Realizzare un diagramma di flusso che legga due numeri, calcoli la loro somma e visualizzi il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 5. Media di due voti

Realizzare un diagramma di flusso che legga due voti, calcoli la media aritmetica e visualizzi il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 6. Area di un rettangolo

Realizzare un diagramma di flusso che legga la base e l'altezza di un rettangolo, calcoli l'area e visualizzi il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 7. Budget e prezzo

Realizzare un diagramma di flusso che legga un budget disponibile e il prezzo di un prodotto, calcoli la differenza tra i due valori e visualizzi il risultato anche quando è negativo.
]



#pagebreak()

= Fase 2 — Condizioni semplici

#block(above: 20pt, below: 10pt, breakable: false)[
== 1. Maggiorenne o minorenne

Data in ingresso l'età di uno studente, visualizzare un messaggio che indichi se è maggiorenne oppure minorenne.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 2. Numero positivo, negativo o zero

Dato in ingresso un numero, stabilire se è positivo, negativo oppure uguale a zero e visualizzare il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 3. Confronto tra due numeri

Dati in ingresso due numeri interi, visualizzare quale dei due è maggiore. Se sono uguali, visualizzare un messaggio appropriato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 4. Piove?

Data in ingresso una risposta alla domanda «Sta piovendo?», visualizzare «Prendi l'ombrello» se la risposta è sì, oppure «Esci senza ombrello» altrimenti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 5. Semaforo

Dato in ingresso il colore di un semaforo, visualizzare «Puoi attraversare» se il colore è verde, oppure «Aspetta» altrimenti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 6. Batteria scarica

Data in ingresso la percentuale di carica di una batteria, visualizzare «Metti in carica» se è inferiore al 20%, oppure «Puoi continuare» altrimenti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 7. Numero pari o dispari

Dato in ingresso un numero intero, visualizzare se è pari oppure dispari.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 8. Temperatura esterna

Data in ingresso la temperatura esterna in gradi Celsius, visualizzare «Fa freddo» se è inferiore a 10 °C, oppure «Non fa freddo» altrimenti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 9. Acquisto di un prodotto

Dati in ingresso il budget disponibile e il prezzo di un prodotto, visualizzare un messaggio che indichi se il budget è sufficiente per l'acquisto.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 10. Voto sufficiente

Dato in ingresso un voto, visualizzare «Sufficiente» se è almeno 6, oppure «Insufficiente» altrimenti.
]



#pagebreak()

= Fase 3 — Calcoli e condizioni

#block(above: 20pt, below: 10pt, breakable: false)[
== 1. Sconto oltre 100 euro

Dati in ingresso la quantità acquistata e il prezzo unitario di un prodotto, calcolare l'importo totale. Se supera 100 €, applicare uno sconto del 5%. Visualizzare l'importo finale da pagare.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 2. Sconto in base al tipo di cliente

Dati in ingresso la quantità e il prezzo unitario di un prodotto, chiedere se il cliente è «IVA» o «Privato». Applicare uno sconto del 21% ai clienti IVA e del 10% ai privati. Visualizzare il totale da pagare. Considerare valide solo queste due risposte.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 3. Sconto a due soglie

Dati in ingresso la quantità e il prezzo unitario di un prodotto, calcolare il totale. Applicare uno sconto del 3% se il totale è compreso tra 20 € e 100 €, estremi inclusi, oppure del 5% se supera 100 €. Sotto 20 € non applicare sconti. Visualizzare il prezzo finale.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 4. Preventivo della gita

Dati in ingresso il numero dei partecipanti a una gita, il costo del treno per persona e il costo complessivo del pullman, calcolare il costo totale del treno e visualizzare quale mezzo è più conveniente. Gestire anche il caso di parità.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 5. Spesa di tre prodotti

Dati in ingresso i prezzi di tre prodotti, calcolare il totale. Se è inferiore a 500 €, applicare uno sconto del 15%; altrimenti applicare uno sconto del 20%. Visualizzare il prezzo finale.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 6. Bolletta del gas

Dati in ingresso i metri cubi di gas consumati, calcolare il costo della bolletta: 10 € di quota fissa, 0,10 € per ciascuno dei primi 500 m³ e 0,12 € per ciascun metro cubo oltre 500. Visualizzare il totale da pagare.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 7. Media sufficiente

Dati in ingresso due voti, calcolare la media aritmetica e visualizzarla. Visualizzare anche «Sufficiente» se la media è almeno 6, oppure «Insufficiente» altrimenti.
]

#pagebreak()
#block(above: 20pt, below: 10pt, breakable: false)[
== 8. Diritto allo sconto

Dati in ingresso i prezzi di due prodotti, calcolare il totale e visualizzare «Hai diritto allo sconto» se supera 50 €, oppure «Nessuno sconto» altrimenti. Non calcolare l'importo dello sconto.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 9. Area grande o piccola

Date in ingresso la base e l'altezza di un rettangolo, calcolare l'area. Visualizzare «Grande» se supera 100 unità quadrate, oppure «Piccolo» altrimenti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 10. Costo di un viaggio

Dati in ingresso i chilometri percorsi e il costo per chilometro, calcolare il costo totale. Visualizzare il costo e indicare se supera 20 €.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 11. Conversione della temperatura

Data in ingresso una temperatura in gradi Celsius, convertirla in Fahrenheit con la formula F = C × 9 ÷ 5 + 32. Visualizzare «Fa freddo» se il risultato è inferiore a 50 °F, oppure «Non fa freddo» altrimenti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 12. Biglietti del cinema

Dati in ingresso l'età di una persona e il numero di biglietti, calcolare il costo totale sapendo che ogni biglietto costa 10 €, oppure 6 € se l'età è inferiore o uguale a 10 anni. Visualizzare il totale.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 13. Spesa e budget

Dati in ingresso i prezzi di tre prodotti e il budget disponibile, calcolare la spesa totale. Visualizzare «Acquisto possibile» se non supera il budget; altrimenti visualizzare «Budget superato» e di quanto.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 14. Media di tre voti

Dati in ingresso tre voti di Informatica, Matematica e Italiano, calcolare e visualizzare la media aritmetica. Visualizzare «Promosso» se la media è almeno 6, oppure «Da recuperare» altrimenti.
]



#pagebreak()

= Fase 4 — Più confronti e casi particolari

#block(above: 20pt, below: 10pt, breakable: false)[
== 1. Maggiore tra tre numeri

Dati in ingresso tre numeri interi, visualizzare il maggiore. Se due o più numeri condividono il valore massimo, visualizzarlo una sola volta.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 2. Maggiore tra cinque numeri

Dati in ingresso cinque numeri, individuare e visualizzare il maggiore senza confrontare ogni numero con tutti gli altri.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 3. Punto all'interno di un intervallo

Dati in ingresso due estremi reali di un intervallo e un terzo numero reale, stabilire se quest'ultimo appartiene all'intervallo, estremi inclusi. Gli estremi vengono inseriti in ordine crescente.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 4. Punto su una retta

Dati in ingresso i coefficienti m e q della retta y = mx + q e le coordinate reali a e b di un punto P, stabilire e visualizzare se P appartiene alla retta.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 5. Giudizio di un voto

Dato in ingresso un voto intero da 1 a 10, visualizzare «Gravemente insufficiente» per voti fino a 3, «Insufficiente» per 4, «Mediocre» per 5, «Sufficiente» per 6, «Discreto» per 7 e «Ottimo» per voti da 8 a 10.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 6. Tipo di triangolo

Date in ingresso le lunghezze positive dei tre lati di un triangolo, verificare prima che possano formare un triangolo. Se sì, stabilire se è equilatero, isoscele oppure scaleno e visualizzare il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 7. Rettangolo o quadrato

Date in ingresso due lunghezze positive dei lati di una figura rettangolare, stabilire se è un quadrato oppure un rettangolo. Calcolare e visualizzare area e perimetro.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 8. Divisibilità tra due numeri

Dati in ingresso due numeri interi A e B, verificare se B è zero. In quel caso visualizzare «Divisione non possibile»; altrimenti stabilire se A è divisibile per B senza resto e visualizzare il risultato.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 9. Autorizzazione a partecipare

Dati in ingresso l'età di una persona e la presenza di un'autorizzazione firmata, visualizzare «Puoi partecipare» soltanto se ha almeno 14 anni e possiede l'autorizzazione; altrimenti visualizzare «Non puoi partecipare».
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 10. Divisione del conto con controllo

Dati in ingresso l'importo totale di un conto e il numero dei partecipanti, calcolare e visualizzare la quota a persona se i partecipanti sono più di zero; altrimenti visualizzare «Numero di partecipanti non valido».

#v(6pt)
#line(length: 100%, stroke: 0.35pt + faint)
]



#pagebreak()

= Fase 5 — Problemi formulati in modo poco preciso

I seguenti testi sono volutamente incompleti o ambigui. Prima di disegnare il diagramma, individuare che cosa non è chiaro, quali informazioni mancano e quali ipotesi sarebbe necessario fare. Quando possibile, riscrivere il problema in modo preciso e completo. Non esiste necessariamente un'unica interpretazione corretta: è importante motivare le proprie scelte.

#block(above: 20pt, below: 10pt, breakable: false)[
== 1. Il numero giusto

«Leggere un numero e dire se è quello giusto.»

Realizzare un diagramma di flusso per risolvere il problema. Stabilire che cosa significa «quello giusto», da dove proviene il valore di riferimento e quali informazioni devono essere inserite.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 2. Lo sconto

«Se il cliente compra abbastanza, riceve uno sconto. Alla fine si mostra quanto paga.»

Realizzare un diagramma di flusso per risolvere il problema. Specificare che cosa significa «abbastanza», quanto vale lo sconto e quali dati devono essere richiesti.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 3. Il numero più grande

«Inserire alcuni numeri e visualizzare quello più grande.»

Realizzare un diagramma di flusso per risolvere il problema. Decidere quanti numeri devono essere inseriti e come gestire il caso in cui due o più numeri siano uguali al massimo.
]

#block(above: 20pt, below: 10pt, breakable: false)[
== 4. La temperatura

«Leggere la temperatura e dire se bisogna stare attenti.»

Realizzare un diagramma di flusso per risolvere il problema. Chiarire quale unità di misura si utilizza, quale soglia determina il messaggio e che cosa deve significare «stare attenti».
]



#pagebreak()

= Esegui il diagramma di flusso

Osserva ciascun diagramma di flusso. Per ogni input indicato, segui le frecce e scrivi esattamente gli output nell'ordine in cui vengono visualizzati. Non correggere il diagramma, anche se stampa parole strane o frasi che sembrano sbagliate.

== 1. Gatto o cane? — Una condizione

#figura("immagini/diagrammi-flusso/ripasso-01-gatto-cane.svg", 112mm)

Scrivi l'output per questi input:

- A = 5, B = 10
- A = 4, B = 2
- A = 2, B = 2


#pagebreak()
== 2. Pizza o pasta? — Calcolo e condizione

#figura("immagini/diagrammi-flusso/ripasso-02-pizza-pasta.svg", 112mm)

Scrivi l'output per questi input:

- X = 3
- X = 5
- X = 8


#pagebreak()
== 3. AFM oppure RIM? — Due condizioni, due output

#figura("immagini/diagrammi-flusso/ripasso-03-afm-rim.svg", 112mm)

Scrivi tutti gli output, nell'ordine, per questi input:

- A = 7, B = 7
- A = 4, B = 9
- A = 0, B = 0


#pagebreak()
== 4. Segui il percorso — Condizioni annidate

#figura("immagini/diagrammi-flusso/ripasso-04-uguali-trabocchetto.svg", 112mm)

Scrivi l'output esatto per questi input:

- A = 2, B = 9
- A = 9, B = 2
- A = 4, B = 4


#pagebreak()
== 5. Sfida finale — Calcoli, più condizioni e più output

#figura("immagini/diagrammi-flusso/ripasso-05-due-output.svg", 112mm)

Scrivi tutti gli output, nell'ordine, per questi input:

- A = 10, B = 3
- A = 1, B = 5
- A = 6, B = 6

#v(6pt)
#line(length: 100%, stroke: 0.35pt + faint)

Ricorda: il compito è leggere ed eseguire il diagramma. I testi visualizzati possono essere volutamente assurdi o ingannevoli: conta soltanto il percorso indicato dalle frecce.
