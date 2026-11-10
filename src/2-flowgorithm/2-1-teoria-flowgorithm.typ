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
== Sommare due numeri già stabiliti

Scriviamo un programma che somma due numeri. In questo primo esempio, i numeri sono scelti direttamente nel programma attraverso due istruzioni di assegnazione.

*Replicare il diagramma* riportato sotto in Flowgorithm ed eseguirlo.


#figura("/assets/immagini/somma-fissa.jpg", 78mm)

*Dopo averlo eseguito, rispondere alle domande sul quaderno:*

 + Quale risultato viene visualizzato?
 + Il programma chiede all'utente di inserire i due numeri?
 + Se volessimo sommare due numeri diversi, per esempio 10 e 12, cosa dovremmo cambiare?

]

#pagebreak()

#prova-in-laboratorio[
== Lo stesso programma, ma più generico

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
== Guidare l’utente nell’inserimento dei numeri

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
