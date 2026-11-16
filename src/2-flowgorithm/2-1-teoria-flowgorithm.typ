#import "/styles/template.typ": blu, dispensa
#import "/styles/didattica.typ": *

#let prova-in-laboratorio(body) = block(
  width: 100%,
  breakable: false,
  inset: 12pt,
  stroke: 1pt + blu,
)[
  #align(right)[#etichetta[Prova in laboratorio]]
  #body
]

#show: dispensa.with(
  titolo: "Flowgorithm: creare programmi con i diagrammi di flusso",
  sottotitolo: "Teoria e pratica con Flowgorithm.",
  numerazione: "1.1",
)

#show heading.where(level: 2): set text(size: 15pt, fill: blu)

= Che cos'è Flowgorithm?

Un computer può eseguire moltissime operazioni, ma per farlo ha bisogno di istruzioni precise. Per comunicare con il computer si utilizzano i *linguaggi di programmazione*.

*Flowgorithm* permette di creare programmi con un *linguaggio di programmazione visuale*: invece di scrivere lunghe righe di codice, si utilizzano blocchi grafici collegati tra loro. Ogni blocco rappresenta un'istruzione.


== Dai diagrammi di flusso a Flowgorithm

Nei diagrammi di flusso abbiamo già rappresentato programmi attraverso figure geometriche e frecce. In Flowgorithm ritroviamo molti degli stessi concetti: lettura, scrittura, elaborazione e condizione.

 - *Nei diagrammi di flusso* rappresentavamo i passaggi di un programma.
 - *In Flowgorithm* possiamo costruire il programma ed eseguirlo realmente, osservando i risultati. Cosa significa questo? Significa che possiamo “fare play” e provare il programma realmente!

= I blocchi di Flowgorithm

Quando si crea un programma sono già presenti *Inizio* e *Fine*. Le istruzioni si inseriscono tra questi due blocchi facendo clic sulla freccia di collegamento: compare un menu per scegliere il blocco da aggiungere.


#figura("/assets/immagini/menu-blocchi.jpg", 94mm)


== Lettura (Input)


#figura("/assets/immagini/blocco-lettura.jpg", 27mm)

Permette al programma di *ricevere un dato dall'utente*, normalmente dalla tastiera. Per esempio, il programma chiede l'età e conserva il numero inserito in una variabile. 
È il blocco di input già visto nei diagrammi di flusso. Attenzione: per leggere qualsiasi dato è sempre necessario utilizzare prima un blocco di dichiarazione (vedi sotto)


#figura("/assets/immagini/imposta-lettura.jpg", 102mm)


== Scrittura (Output)


#figura("/assets/immagini/blocco-scrittura.jpg", 27mm)

Permette di *mostrare informazioni sullo schermo*: messaggi, numeri, valori di variabili o risultati di calcoli. Per esempio, può visualizzare `"Benvenuto!"` oppure il prezzo finale. Corrisponde al blocco di output.


#figura("/assets/immagini/imposta-scrittura.jpg", 102mm)


== Dichiarazione (Declare)


#figura("/assets/immagini/blocco-dichiarazione.jpg", 27mm)

Serve a *creare un dato di input o di ouput* (che da qui in avanti chiameremo *variabile*), indicando il suo nome e il tipo di dato che conterrà. Per esempio, se vogliamo creare un programma che somma due numeri, dovremo creare due variabili, una per ogni numero. È una novità rispetto ai diagrammi di flusso realizzati finora. (Approfondimento nelle sezioni successive)


#figura("/assets/immagini/imposta-dichiarazione.jpg", 102mm)


== Assegnazione (Assign)


#figura("/assets/immagini/blocco-assegnazione.jpg", 27mm)

Permette di *inserire o modificare il valore di un dato* (variabile). Per esempio, `prezzo = 20` memorizza il numero 20 nella variabile `prezzo`. È il blocco di elaborazione visto nei diagrammi di flusso.


#figura("/assets/immagini/imposta-assegnazione.jpg", 102mm)


== Condizione (If)


Corrisponde al blocco di selezione (rombo) nei diagrammi di flusso. Permette al programma di *prendere una decisione*: controlla se una condizione è vera o falsa e sceglie quali istruzioni eseguire. Per esempio, `eta >= 18` permette di distinguere tra maggiorenni e minorenni.

#block(breakable: false, width: 100%)[
  #align(center)[
    #grid(
      columns: (88mm, 49mm),
      column-gutter: 6mm,
      align: horizon,
      image("/assets/immagini/imposta-condizione.jpg", alt: "Finestra di Flowgorithm per impostare la condizione a < 100."),
      image("/assets/immagini/rami-condizione.jpg", alt: "Rombo con la condizione a < 100 e i rami Falso e Vero."),
    )
  ]
]

Per ora non consideriamo altri blocchi.

#pagebreak(weak: true)

= Eseguire un programma con flowgorithm

In flowgorithm, a differenza dei diagrammi di flusso visti finora, non ci limiteremo a scrivere i programmi: potremo anche provarli. Una volta scritto il diagramma, premendo sul simbolo del play verde è possibile provare (*eseguire*) il programma. 


#figura("/assets/immagini/avvio-programma.jpg", 111mm)

Eseguire il programma ci permetterà di capire se abbiamo scritto il programma corretto e non abbiamo fatto errori. La finestra che ci si apre permette a noi (gli utenti) di comunicare gli input (sulla destra i messaggi che scriviamo noi) e al computer di comunicare gli output (sulla destra i messaggi del computer. 

Questo semplice programma chiede all’utente il prezzo di un prodotto e comunica il prezzo finale aggiungendo 5 euro di spedizione. *Attenzione: questo non è il programma, è la sua esecuzione!*


#figura("/assets/immagini/console-esecuzione.jpg", 72mm)

#block(breakable: false, width: 100%)[
  == Programmatore e utente

  Il *programmatore* è chi scrive il programma. L’*utente* è chi lo usa.

  In laboratorio siamo programmatori quando costruiamo il diagramma e utenti quando eseguiamo il programma e interagiamo con la console. Nella vita di tutti i giorni i due ruoli sono di solito svolti da persone diverse. Quando usiamo un’app sul telefono, per esempio, siamo utenti di un programma scritto da altri.

  #confronto(
    align(center)[
      #etichetta[Schermata del programmatore]
      #v(4pt)
      #image("/assets/immagini/schermata-programmatore.jpg", width: 100%, alt: "Editor di Flowgorithm con il diagramma che il programmatore può costruire e modificare.")
    ],
    align(center)[
      #etichetta[Schermata dell’utente]
      #v(4pt)
      #image("/assets/immagini/console-esecuzione.jpg", width: 100%, alt: "Console di Flowgorithm con il prezzo inserito dall’utente e il risultato del calcolo.")
    ],
  )
]

#pagebreak()
= Le variabili: conservare informazioni

Un programma, quasi sempre, ha a che fare con dei dati. Nei diagrammi di flusso e nei programmi che abbiamo analizzato, li avevamo divisi in dati di input e di output. Per esempio, nel programma che somma due numeri, `a` e `b` erano dati di input. Con `risultato = a + b` creavamo il dato di output `risultato`.

In flowgorithm diremo invece che `risultato, a, b` sono delle variabili.

Tutti i dati si chiamano *variabili*. Una variabile è *uno spazio della memoria del computer con un nome*, che permette di conservare un valore e, quando serve di modificarlo.

Sotto vediamo la differenza tra *dichiarare* una variabile e *assegnare* una variabile.


== Dichiarare e assegnare una variabile

Dichiarare una variabile significa dire al computer che esiste un dato e che ha un determinato nome.

Qui sotto la schermata di dichiarazione di una variabile, in cui stiamo dicendo che esiste una variabile (un dato) chiamato “prezzo”. 


#figura("/assets/immagini/imposta-dichiarazione.jpg", 85mm)

Assegnare una variabile significa dargli un valore. Sotto è riportata la schermata in cui è possibile dare un valore a una variabile. A sinistra scriviamo il nome della variabile, a destra il suo valore. 


#figura("/assets/immagini/imposta-assegnazione.jpg", 85mm)


=== Dichiarazione e assegnazione sono due istruzioni completamente diverse, ma servono entrambe!


#figura("/assets/immagini/dichiarazione-assegnazione.jpg", 108mm)


== Il tipo di una variabile

Quando dichiariamo una variabile, oltre al nome dobbiamo scegliere anche il suo *tipo*. Questo serve al computer per sapere quali valori può contenere. Per esempio, se dobbiamo conservare un'età useremo un numero, mentre per conservare il nome di una persona useremo un testo.


#figura("/assets/immagini/imposta-dichiarazione.jpg", 85mm)

Nella schermata sopra è possibile scegliere il tipo della variabile. I principali tipi sono quattro:


#table(
  columns: (28%, 37%, 35%),
  table.header([*Tipo*], [*Che cosa contiene*], [*Esempi*]),
  [*Intero*],
  [Numeri senza parte decimale],
  [`5`, `18`, `-3`],
  [*Reale*],
  [Numeri anche con parte decimale],
  [`3.5`, `12.75`],
  [*Stringa*],
  [Testi e caratteri],
  [`"Luca"`, `"Ciao"`],
  [*Booleano (Boolean)*],
  [Valori logici veri o falsi],
  [`True`, `False`],
)


== Numeri interi e reali

Un'età espressa in anni interi può essere di tipo *Intero*. Un prezzo con i centesimi può essere di tipo *Reale*.

Attenzione: in Flowgorithm i numeri decimali si scrivono con il *punto*, per esempio `12.50`.


== Stringhe

Una stringa è un testo, per esempio il nome di una persona. Quando scriviamo un testo direttamente nel programma dobbiamo usare i *doppi apici*, come `"Marco"`.

Attenzione: `"12"` è un testo, mentre `12` è un numero.


== Booleani

Una variabile booleana può contenere soltanto due valori: `True` (vero) oppure `False` (falso). Per esempio, può conservare l'informazione se una persona è maggiorenne oppure no.

#pagebreak()

= Mettiamo in pratica

Finora abbiamo visto come inserire i blocchi, dichiarare le variabili ed eseguire un programma. Proviamo ora a costruire dei programmi semplici e a capire la differenza tra un programma che funziona soltanto con alcuni valori già stabiliti e uno che può essere utilizzato con numeri sempre diversi.


#prova-in-laboratorio[
== Replica il programma e rifletti

Scriviamo il primo programma su Flowgorithm. In questo primo esempio, vengono dichiarati due numeri e sommati. Il risultato della somma viene comunicato in output.

*Replicare il diagramma* in Flowgorithm ed eseguirlo.


#figura("/assets/immagini/somma-fissa.jpg", 78mm)

*Dopo averlo eseguito, rispondere alle domande sul quaderno:*

 + Viene visualizzato un risultato? Se si, quale?
 + A che cosa servono i blocchi "dichiara"?
 + A che cosa servono invece i blocchi "assegna"?
 + A che cosa serve il blocco scrivi? Qual'è la sua funzione?
 + Se volessimo sommare due numeri diversi, per esempio 10 e 12, cosa dovremmo cambiare?

]

#pagebreak()

#prova-in-laboratorio[
== Replica il programma e rifletti

Scriviamo il programma precedente in modo diverso.

Replica il diagramma su flowgorithm.


#figura("/assets/immagini/somma-lettura.jpg", 82mm)

*Eseguire il programma più volte, inserendo ogni volta due numeri diversi.*

*Rispondere sul quaderno*

 + Che cosa è cambiato rispetto al programma precedente? Quali istruzioni sono state sostituite o aggiunte?
 + Possiamo sommare numeri diversi senza modificare il diagramma?
 + Perché possiamo dire che questo programma è *più generico*?

]

#pagebreak()

#prova-in-laboratorio[
== Replica il programma e rifletti

Un programma può produrre il risultato corretto ed essere comunque poco chiaro per chi lo usa. Nell'esempio precedente l'utente deve inserire due numeri, ma non gli viene chiesto. 

In questo esempio, prima di ogni blocco di *Lettura (Input)* aggiungiamo un blocco di *Scrittura (Output)* che dice all'utente cosa fare.

Replica il diagramma su flowgorithm.


#figura("/assets/immagini/somma-guidata.jpg", 82mm)

*Eseguire il programma più volte, inserendo ogni volta due numeri diversi.*

*Rispondere sul quaderno*

 + Quali blocchi sono stati aggiunti e dove?
 + Immagina di usare il programma senza aver visto il diagramma. In quale versione capisci più facilmente che cosa inserire e quando? Perchè?

*Da ricordare.* I blocchi di *Scrittura (Output)* possono mostrare i risultati e guidare l’utente durante l’esecuzione.

]

#pagebreak()

#prova-in-laboratorio[
== Calcolare l’area di un quadrato con un lato scelto dall’utente

Il diagramma qui sotto calcola l’area di un quadrato con il lato fissato a 4. Usa quello che hai imparato negli esempi precedenti per far scegliere il lato all’utente e guidarlo durante l'utilizzo del programma.


#figura("/assets/immagini/lato-fisso.jpg", 87mm)

*Attività su flowgorithm*

 + Crea un nuovo programma in Flowgorithm, ricostruendo il diagramma sopra.
 + Modifica il programma in modo che permetta all'utente di inserire la misura del lato
 + Aggiungi un messaggio, prima della lettura, per spiegare all'utente che deve inserire la misura del lato. 
 + Aggiungi un messaggio, prima della scrittura, per spiegare all'utente che il risultato è l’area del quadrato.
 + Prova il programma con due misure diverse e verifica il risultato.

*Allega screenshot su classroom dell'esecuzione del programma*

Questo è un esempio di risultato atteso:

#figura("/assets/immagini/esecuzione-area.jpg", 112mm, alt: "Esempio di esecuzione. Il programma chiede la misura del lato. L’utente inserisce 6 e il programma mostra che l’area del quadrato è 36.")

]

// Conversazioni di esempio: output a sinistra, input a destra, come nella console.
#let conversazione(larghezza-input: 24%, ..messaggi) = block(
  width: 100%,
  breakable: false,
  inset: 10pt,
  stroke: 0.5pt + rgb("#cbd2d8"),
  radius: 3pt,
)[
  #set par(justify: false, leading: 0.35em)
  #block(above: 0pt, below: 10pt)[
    #text(size: 10pt, weight: "bold", fill: blu)[Console · Esempio di esecuzione]
  ]
  #for (ruolo, contenuto) in messaggi.pos() {
    let input = ruolo == "Utente"
    align(if input { right } else { left }, block(
      width: if input { larghezza-input } else { 88% },
      inset: (x: 8pt, y: 5pt),
      fill: if input { rgb("#d6e8f8") } else { rgb("#dff3d8") },
      stroke: 0.5pt + if input { rgb("#8aaac5") } else { rgb("#9bb693") },
      radius: 3pt,
      above: 0pt,
      below: 5pt,
    )[
      #text(size: 9pt, weight: "bold")[#ruolo (#if input { [Input] } else { [Output] })]
      #linebreak()
      #contenuto
    ])
  }
]

#pagebreak()

#prova-in-laboratorio[
== Un programma che risponde

Realizza in Flowgorithm un programma che produca la conversazione mostrata qui sotto. Parti dal risultato atteso e decidi quali blocchi e variabili servono e in quale ordine inserire le istruzioni.

#conversazione(
  ("Programma", [Ciao]),
  ("Programma", [Inserisci un numero]),
  ("Utente", [7]),
  ("Programma", [Il numero che hai inserito è:]),
  ("Programma", [7]),
)

*Attività su Flowgorithm*

 + Costruisci il programma usando i blocchi di *Scrittura (Output)* e *Lettura (Input)* e le dichiarazioni necessarie per memorizzare il dato.
 + Prova il programma più volte, inserendo numeri diversi, e controlla che mostri sempre il numero appena inserito.

Il numero *7 è soltanto un esempio*: il programma deve funzionare con qualsiasi numero inserito dall'utente, *senza modificare il diagramma*.
]

#pagebreak()

#prova-in-laboratorio[
== Un programma che calcola il BMI

Realizza in Flowgorithm un programma che calcoli il *BMI (Indice di Massa Corporea)* e riproduca la conversazione mostrata qui sotto. Scegli autonomamente i blocchi, le variabili e l'ordine delle istruzioni.

#conversazione(
  ("Programma", [Ciao, questo è un programma che calcola il tuo BMI.]),
  ("Programma", [Inserisci la tua altezza in cm]),
  ("Utente", [180]),
  ("Programma", [Inserisci il tuo peso in kg]),
  ("Utente", [81]),
  ("Programma", [Il tuo BMI è:]),
  ("Programma", [25]),
)

*Attività su Flowgorithm*

 + Costruisci il programma utilizzando i blocchi di Flowgorithm già studiati.
 + Prova il programma con valori diversi di altezza e peso e verifica i risultati.


Comprendi quali dati servono e quali unità di misura richiede la formula. Se necessario, cerca su Internet la formula matematica per calcolare il BMI.

I valori *180* e *81* sono soltanto un esempio: il programma deve calcolare il BMI anche con altri valori, senza modificare il diagramma.
]

#pagebreak()

#prova-in-laboratorio[
== Over 16: puoi entrare?

Realizza in Flowgorithm un programma che chieda all'utente quanti anni ha e comunichi se può entrare. L'ingresso è consentito soltanto a chi ha *più di 16 anni*; chi ha 16 anni o meno non può entrare.

Questi sono due esempi di esecuzione dello stesso programma:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  conversazione(
    larghezza-input: 48%,
    ("Programma", [Quanti anni hai?]),
    ("Utente", [17]),
    ("Programma", [puoi entrare]),
  ),
  conversazione(
    larghezza-input: 48%,
    ("Programma", [Quanti anni hai?]),
    ("Utente", [16]),
    ("Programma", [non puoi entrare]),
  ),
)

*Attività su Flowgorithm*

 + Parti dalle conversazioni e scegli le variabili e i blocchi necessari. Usa un blocco di *Condizione (If)* per far scegliere al programma quale messaggio mostrare.
 + Il programma deve leggere l'età e mostrare *un solo messaggio finale*, in base al valore inserito.
 + Provalo con *15, 16 e 17 anni* e controlla che rispetti la regola di ingresso, senza modificare il diagramma.
]

#pagebreak()

#prova-in-laboratorio[
== Piove? Prendi l'ombrello!

Realizza in Flowgorithm un programma che chieda “Piove?” e legga una risposta scritta come `si` oppure `no`. Il messaggio finale deve cambiare in base alla risposta dell'utente, come negli esempi.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  conversazione(
    larghezza-input: 48%,
    ("Programma", [Piove?]),
    ("Utente", [si]),
    ("Programma", [allora prendi l'ombrello!!!! te lo devo anche dire?]),
  ),
  conversazione(
    larghezza-input: 48%,
    ("Programma", [Piove?]),
    ("Utente", [no]),
    ("Programma", [allora esci sereno :)]),
  ),
)

*Attività su Flowgorithm*

 + Scegli un tipo di variabile adatto a conservare la risposta dell'utente.
 + Costruisci il programma usando i blocchi già studiati e una *Condizione (If)* per scegliere il messaggio finale.
 + Esegui il programma due volte: una rispondendo `si`, l'altra rispondendo `no`. Controlla che in ogni esecuzione compaia soltanto il messaggio corrispondente.
]

#pagebreak()

#prova-in-laboratorio[
== Tre voti: come va la media?

Realizza in Flowgorithm un programma che chieda i voti di *italiano, matematica ed economia*, calcoli la loro media e comunichi il risultato. Se la media è *inferiore a 6*, deve mostrare i messaggi dell'esempio a sinistra; altrimenti quelli dell'esempio a destra.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  conversazione(
    larghezza-input: 48%,
    ("Programma", [Inserisci il voto di italiano]),
    ("Utente", [4]),
    ("Programma", [Inserisci il voto di matematica]),
    ("Utente", [5]),
    ("Programma", [Inserisci il voto di economia]),
    ("Utente", [6]),
    ("Programma", [aiaiaiai sei insufficiente]),
    ("Programma", [la media è: 5]),
  ),
  conversazione(
    larghezza-input: 48%,
    ("Programma", [Inserisci il voto di italiano]),
    ("Utente", [6]),
    ("Programma", [Inserisci il voto di matematica]),
    ("Utente", [7]),
    ("Programma", [Inserisci il voto di economia]),
    ("Utente", [8]),
    ("Programma", [grande!]),
    ("Programma", [la tua media è: 7]),
  ),
)

*Attività su Flowgorithm*

 + Scegli le variabili e i blocchi necessari per leggere i tre voti, calcolare la media e scegliere i messaggi da mostrare. La media può avere una parte decimale: scegli un tipo di variabile adatto.
 + Mostra il commento in un messaggio e, nel messaggio successivo, il testo che introduce la media insieme al suo valore, sulla *stessa riga*, come negli esempi.
 + Prova il programma con voti che producano una media *inferiore a 6*, *uguale a 6* e *superiore a 6*. Verifica i risultati senza modificare il diagramma.
]

#pagebreak()

= Esercizi sulle condizioni

#block(sticky: true)[#etichetta[Condizioni semplici]]

#esercizio[
== Bolletta elettrica

Realizzare un programma che calcoli il costo di una bolletta elettrica. I primi 200 kWh consumati costano 0,25 € ciascuno, mentre i consumi oltre 200 kWh costano 0,35 € per ogni kWh aggiuntivo. Il programma deve chiedere il consumo e comunicare il costo totale.
]

#esercizio[
== Autonomia di un'auto elettrica

Realizzare un programma che verifichi se la batteria di un'auto elettrica è sufficiente per raggiungere una destinazione. Il programma deve chiedere l'autonomia massima dell'auto, la percentuale di batteria disponibile e la distanza da percorrere. Deve comunicare se è possibile completare il viaggio e quanti chilometri di autonomia rimangono oppure mancano.
]

#esercizio[
== Prenotazione di un concerto

Realizzare un programma che gestisca la prenotazione di posti per un concerto. Il programma deve conoscere la capienza massima del locale, il numero di posti già occupati e il numero di biglietti richiesti. Deve stabilire se la prenotazione può essere accettata e comunicare il numero di posti ancora disponibili.
]


#block(sticky: true)[#etichetta[Condizioni composte]]

#esercizio[
== Concorso scolastico

Realizzare un programma che stabilisca se uno studente può partecipare a un concorso scolastico. Per essere ammesso deve avere una media di almeno 8 e non più di 10 assenze. Il programma deve comunicare se lo studente soddisfa i requisiti.
]

#esercizio[
== Iscrizione a una gara sportiva

Realizzare un programma che gestisca le iscrizioni a una gara sportiva. Possono iscriversi soltanto persone con un'età compresa tra 16 e 25 anni, estremi inclusi, e in possesso di un certificato medico valido. Il programma deve verificare i requisiti e comunicare se l'iscrizione è consentita.
]

#esercizio[
== Ordine online

Realizzare un programma che calcoli il costo finale di un ordine online. La spedizione costa 6 €, ma è gratuita se l'ordine raggiunge almeno 80 € oppure se il cliente possiede un abbonamento Premium. Se il prodotto è fragile, viene aggiunto un supplemento di imballaggio di 5 €, indipendentemente dalle spese di spedizione.
]

#esercizio[
== Noleggio di un'automobile

Realizzare un programma che stabilisca se una persona può noleggiare un'automobile. Il noleggio è consentito soltanto a chi ha almeno 21 anni e possiede la patente da almeno 2 anni. Se il conducente ha meno di 25 anni, viene applicato un supplemento di 8 € al giorno. Il programma deve chiedere i dati necessari e calcolare il costo totale del noleggio, conoscendo la tariffa giornaliera e la durata.
]


#esercizio[
== Biglietto del cinema

Realizzare un programma che calcoli il prezzo di un biglietto del cinema. Il biglietto intero costa 12 €, mentre i minori di 14 anni e le persone di almeno 65 anni pagano 8 €. Il mercoledì tutti pagano 7 €, indipendentemente dall'età. Il programma deve applicare la tariffa corretta e comunicarla all'utente.
]

#esercizio[
== Riscaldamento automatico

Realizzare un programma che gestisca il riscaldamento automatico di una casa. Se la temperatura è inferiore a 18 °C e qualcuno è in casa, il riscaldamento deve accendersi. Se la temperatura scende sotto i 5 °C, deve accendersi comunque, anche quando la casa è vuota, per evitare il congelamento delle tubature. Negli altri casi deve rimanere spento. Il programma deve comunicare lo stato del riscaldamento.
]

#esercizio[
== Prenotazione in hotel

Realizzare un programma che calcoli il prezzo di una prenotazione in hotel. Una camera costa 80 € a notte. Se il cliente soggiorna almeno 5 notti, riceve uno sconto del 10% sul soggiorno. Se prenota almeno 30 giorni prima dell'arrivo, riceve un ulteriore sconto del 5%, calcolato sul prezzo già eventualmente scontato. Durante il fine settimana (sabato o domenica), viene invece applicato un supplemento fisso di 15 € per ogni notte del soggiorno. Il programma deve calcolare il totale applicando correttamente tutte le condizioni.
]
