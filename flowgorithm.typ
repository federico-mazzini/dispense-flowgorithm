// DISPENSA FLOWGORITHM — fonte: esportazione Notion allegata.
// Le frasi originali sono conservate; cambia soltanto la struttura tipografica.
#set document(title: "Flowgorithm — creare programmi con i diagrammi di flusso", author: "Materiale didattico")
#let ink = rgb("#28292a")
#let rust = rgb("#a4513d")
#let navy = rgb("#254353")
#let faint = rgb("#d6d8d9")
#set page(paper: "a4", margin: (top: 22mm, bottom: 21mm, left: 23mm, right: 22mm),
  footer: context [
    #line(length: 100%, stroke: 0.35pt + faint)
    #v(3pt)
    #grid(columns: (1fr, auto),
      [#text(font: "Inter", size: 7.7pt, fill: navy)[FLOWGORITHM · TEORIA E PRATICA]],
      [#text(font: "Inter", size: 7.7pt, fill: navy)[#counter(page).display()]],
    )
  ],
)
#set text(font: "Linux Libertine O", size: 11pt, fill: ink, lang: "it")
#set par(justify: true, leading: 0.58em, spacing: 0.66em)
#set heading(numbering: none)
#set list(indent: 5mm, body-indent: 3mm)
#set enum(indent: 5mm, body-indent: 3mm)
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
#text(font: "Inter", size: 25pt, weight: "semibold", fill: navy)[Flowgorithm: creare programmi con i diagrammi di flusso]
#v(6pt)
#line(length: 39%, stroke: 1.4pt + rust)
#v(15pt)


= 1. Che cos'è Flowgorithm?

Un computer può eseguire moltissime operazioni, ma per farlo ha bisogno di istruzioni precise. Per comunicare con il computer si utilizzano i *linguaggi di programmazione*.

*Flowgorithm* permette di creare programmi con un *linguaggio di programmazione visuale*: invece di scrivere lunghe righe di codice, si utilizzano blocchi grafici collegati tra loro. Ogni blocco rappresenta un'istruzione.


== Dai diagrammi di flusso a Flowgorithm

Nei diagrammi di flusso abbiamo già rappresentato programmi attraverso figure geometriche e frecce. In Flowgorithm ritroviamo molti degli stessi concetti: lettura, scrittura, elaborazione e condizione.

 - *Nei diagrammi di flusso* rappresentavamo i passaggi di un programma.
 - *In Flowgorithm* possiamo costruire il programma ed eseguirlo realmente, osservando i risultati. Cosa significa questo? Significa che possiamo “fare play” e provare il programma realmente!


= 2. I blocchi di Flowgorithm

Quando si crea un programma sono già presenti *Inizio* e *Fine*. Le istruzioni si inseriscono tra questi due blocchi facendo clic sulla freccia di collegamento: compare un menu per scegliere il blocco da aggiungere.


#figura("immagini/Screenshot_2026-11-05_alle_17.53.55.jpg", 94mm)


== Lettura (Input)


#figura("immagini/Screenshot_2026-11-05_alle_18.19.45.png", 27mm)

Permette al programma di *ricevere un dato dall'utente*, normalmente dalla tastiera. Per esempio, il programma chiede l'età e conserva il numero inserito in una variabile. 
È il blocco di input già visto nei diagrammi di flusso. Attenzione: per leggere qualsiasi dato è sempre necessario utilizzare prima un blocco di dichiarazione (vedi sotto)


#figura("immagini/Screenshot_2026-11-05_alle_18.00.24.jpg", 102mm)


== Scrittura (Output)


#figura("immagini/Screenshot_2026-11-05_alle_18.19.50.png", 27mm)

Permette di *mostrare informazioni sullo schermo*: messaggi, numeri, valori di variabili o risultati di calcoli. Per esempio, può visualizzare `"Benvenuto!"` oppure il prezzo finale. Corrisponde al blocco di output.


#figura("immagini/Screenshot_2026-11-05_alle_18.00.45.jpg", 102mm)


== Dichiarazione (Declare)


#figura("immagini/Screenshot_2026-11-05_alle_18.19.32.png", 27mm)

Serve a *creare un dato di input o di ouput* (che da qui in avanti chiameremo *variabile*), indicando il suo nome e il tipo di dato che conterrà. Per esempio, se vogliamo creare un programma che somma due numeri, dovremo creare due variabili, una per ogni numero. È una novità rispetto ai diagrammi di flusso realizzati finora. (Approfondimento nelle sezioni successive)


#figura("immagini/Screenshot_2026-11-05_alle_17.53.21.jpg", 102mm)


== Assegnazione (Assign)


#figura("immagini/Screenshot_2026-11-05_alle_18.19.39.png", 27mm)

Permette di *inserire o modificare il valore di un dato* (variabile). Per esempio, `prezzo = 20` memorizza il numero 20 nella variabile `prezzo`. È il blocco di elaborazione visto nei diagrammi di flusso.


#figura("immagini/Screenshot_2026-11-05_alle_18.00.56.jpg", 102mm)


== Condizione (If)


#figura("immagini/Screenshot_2026-11-05_alle_18.20.00.png", 27mm)

Corrisponde al blocco di selezione (rombo) nei diagrammi di flusso. Permette al programma di *prendere una decisione*: controlla se una condizione è vera o falsa e sceglie quali istruzioni eseguire. Per esempio, `eta >= 18` permette di distinguere tra maggiorenni e minorenni.

Per ora non consideriamo altri blocchi.


= 3. Eseguire un programma con flowgorithm

In flowgorithm, a differenza dei diagrammi di flusso visti finora, non ci limiteremo a scrivere i programmi: potremo anche provarli. Una volta scritto il diagramma, premendo sul simbolo del play verde è possibile provare (*eseguire*) il programma. 


#figura("immagini/1cab330e-70e2-45be-9394-f1b9700cfe66.png", 111mm)

Eseguire il programma ci permetterà di capire se abbiamo scritto il programma corretto e non abbiamo fatto errori. La finestra che ci si apre permette a noi (gli utenti) di comunicare gli input (sulla destra i messaggi che scriviamo noi) e al computer di comunicare gli output (sulla destra i messaggi del computer. 

Questo semplice programma chiede all’utente il prezzo di un prodotto e comunica il prezzo finale aggiungendo 5 euro di spedizione. *Attenzione: questo non è il programma, è la sua esecuzione!*


#figura("immagini/Screenshot_2026-11-05_alle_18.06.24.jpg", 102mm)


= 4. Le variabili: conservare informazioni

Un programma, quasi sempre, ha a che fare con dei dati. Nei diagrammi di flusso e nei programmi che abbiamo analizzato, li avevamo divisi in dati di input e di output. Per esempio, nel programma che somma due numeri, `a` e `b` erano dati di input. Con `risultato = a + b` creavamo il dato di output `risultato`.

In flowgorithm diremo invece che `risultato, a, b` sono delle variabili.

Tutti i dati si chiamano *variabili*. Una variabile è *uno spazio della memoria del computer con un nome*, che permette di conservare un valore e, quando serve di modificarlo.

Sotto vediamo la differenza tra *dichiarare* una variabile e *assegnare* una variabile.


== 4.1 Dichiarare e assegnare una variabile

Dichiarare una variabile significa dire al computer che esiste un dato e che ha un determinato nome.

Qui sotto la schermata di dichiarazione di una variabile, in cui stiamo dicendo che esiste una variabile (un dato) chiamato “prezzo”. 


#figura("immagini/Screenshot_2026-11-05_alle_17.53.21.jpg", 102mm)

Assegnare una variabile significa dargli un valore. Sotto è riportata la schermata in cui è possibile dare un valore a una variabile. A sinistra scriviamo il nome della variabile, a destra il suo valore. 


#figura("immagini/Screenshot_2026-11-05_alle_18.00.56.jpg", 102mm)


=== Dichiarazione e assegnazione sono due istruzioni completamente diverse, ma servono entrambe!


#figura("immagini/dichiarazione_assegnazione.svg", 108mm)


== 4.2 Il tipo di una variabile

Quando dichiariamo una variabile, oltre al nome dobbiamo scegliere anche il suo *tipo*. Questo serve al computer per sapere quali valori può contenere. Per esempio, se dobbiamo conservare un'età useremo un numero, mentre per conservare il nome di una persona useremo un testo.


#figura("immagini/Screenshot_2026-11-05_alle_17.53.21.jpg", 95mm)

Nella schermata sopra è possibile scegliere il tipo della variabile. I principali tipi sono quattro:


#table(
  columns: (28%, 37%, 35%),
  inset: 6pt,
  stroke: 0.35pt + faint,
  [Tipo],
  [Che cosa contiene],
  [Esempi],
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


== 5.1 Sommare due numeri già stabiliti

Scriviamo un programma che somma due numeri. In questo primo esempio, i numeri sono scelti direttamente nel programma attraverso due istruzioni di assegnazione.

*Replicare il diagramma* riportato sotto in Flowgorithm ed eseguirlo.


#figura("immagini/Flowgorithm_5_1_somma_valori_fissi.svg", 78mm)

Dopo averlo eseguito, rispondere alle domande:

 + Quale risultato viene visualizzato?
 + Il programma chiede all'utente di inserire i due numeri?
 + Se volessimo sommare due numeri diversi, per esempio 10 e 12, cosa dovremmo cambiare?
 + Il programma è corretto? Qual è il suo limite?


#pagebreak()

== 5.2 Lo stesso programma, ma più generico

Scriviamo lo stesso programma in modo diverso: questa volta i numeri non sono già stabiliti, ma vengono *chiesti all'utente durante l'esecuzione*.

Replicare il diagramma su flowgorithm e rispondere alle domande sotto sul quaderno.


#figura("immagini/Flowgorithm_5_2_somma_input.svg", 82mm)

Eseguire il programma più volte, inserendo ogni volta due numeri diversi.

Confrontare i due programmi:

 + Che cosa è cambiato rispetto al precedente?
 + Quali istruzioni sono state sostituite e quali sono state aggiunte?
 + Perché possiamo dire che questo programma è *più generico*?
 + Possiamo sommare numeri diversi senza modificare il diagramma?


#pagebreak()

== 5.3 Esercizio: l'area di un quadrato

Il programma qui sotto calcola l'area di un quadrato il cui lato è già stato stabilito all'interno del programma.
Replicare il diagramma su flowgorithm e rispondere alle domande sotto sul quaderno.


#figura("immagini/Flowgorithm_5_3_area_quadrato_valore_fisso.svg", 87mm)

Dopo averlo eseguito, rispondere alle domande:

 + Quale area viene visualizzata?
 + Modificare il programma in modo che sia l'utente a inserire la misura del lato.
 + Provare il programma con lati diversi, senza modificare nuovamente il diagramma.
 + Quale blocco è stato necessario aggiungere? Quale istruzione non serve più nella sua forma originale?


#pagebreak()

== 5.4 Esercizio: far capire cosa fa il programma

Un programma può produrre il risultato corretto ma essere poco chiaro per chi lo utilizza.

Il diagramma qui sotto calcola il quadrato di un numero. Chiede un valore e alla fine visualizza il risultato. Quando eseguiamo il programma però, non ci sono messaggi che spiegano all’utente cosa inserire e cosa rappresenta il numero visualizzato.


#figura("immagini/Flowgorithm_5_4_quadrato_numero_senza_messaggi.svg", 87mm)

*Attività*

 + Replicare il diagramma ed eseguirlo.
 + Immaginare di utilizzare il programma senza aver visto il diagramma: si capisce quale numero inserire? Si capisce cosa rappresenta il risultato?
 + Aggiungere delle istruzioni di *Scrittura (Output)* per comunicare all'utente cosa deve inserire e che cosa viene mostrato alla fine.
 + Eseguire di nuovo il programma. Ora è più comprensibile?

*Da ricordare:* le istruzioni di output non servono soltanto a visualizzare risultati. Possono anche aiutare l'utente a capire come utilizzare il programma.
