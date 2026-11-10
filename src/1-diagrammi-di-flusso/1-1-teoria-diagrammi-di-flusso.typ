#import "/styles/template.typ": dispensa
#import "/styles/didattica.typ": *

#show: dispensa.with(
  titolo: "Programmi e diagrammi di flusso",
  sottotitolo: "Teoria ed esempi svolti.",
  numerazione: "1.1",
  spazio-paragrafi: 1.1em,
  interlinea: 0.68em,
)

#outline(title: [Contenuti], depth: 1)
#pagebreak()

= Introduzione ai programmi e al software <cap1>

== Hardware e software

#confronto(
  definizione([HARDWARE], [
La parte *fisica* del dispositivo: ciò che possiamo toccare.

Esempi: schermo, tastiera, mouse, processore.
  ]),
  definizione([SOFTWARE], [
Parte NON fisica, tutto ciò che non si può toccare. Sono i programmi che permettono all’hardware di svolgere dei compiti.

Esempi: browser, videogiochi, Excel, Word, Google Drive
  ]),
)

#nota[*Idea chiave:* hardware e software collaborano. L’hardware è la parte fissa e stabilisce come è fatto il computer o il telefono, il software è la parte che stabilisce il comportamento. Se si apre Word sul computer, il computer è una macchina che scrive documento. Se si apre un gioco, il computer è una macchina che permette di giocare.

]

#messaggio[Il software è costituito dai programmi]
#v(10pt)

== Che cos’è un programma?

Un *programma* è un insieme di *istruzioni* che il computer esegue per svolgere un compito: scrivere un documento, cercare informazioni, comunicare, fare calcoli o giocare.

Le istruzioni vengono scritte usando un *linguaggio di programmazione*, seguendo regole precise.

#messaggio[
*Programmare significa* descrivere in modo preciso le istruzioni che un computer deve eseguire per raggiungere un risultato.

]

#v(8pt)
== Utente e programmatore

#confronto(
  definizione([UTENTE], [
Una persona che utilizza il programma per raggiungere un obiettivo.

*Esempio:* studente che usa Word per scrivere appunti, persona che gioca a FIFA.
  ]),
  definizione([PROGRAMMATORE], [
Progetta e realizza il programma, scrivendo le istruzioni che il computer deve eseguire. Le istruzioni sono scritte in un linguaggio di programmazione, uno speciale linguaggio che il computer può capire.

*Esempio:* persona che ha l’idea e crea un gioco online.
  ]),
)

#messaggio[
Saper usare un programma *non significa necessariamente sapere come è stato realizzato*.

]

#pagebreak()
== Che cos'è l'interfaccia?

L'*interfaccia utente (UI)* è l'insieme degli elementi attraverso cui un *utente* *interagisce* con un programma.

Può includere:

- Pulsanti, menu e icone.
- Campi in cui inserire informazioni.
- Testi, immagini e messaggi di risposta.

#figura("/assets/immagini/teoria-diagrammi-flusso/Screenshot_2026-10-21_alle_01.36.10.png", 105mm, alt: "Due schermate di accesso: la seconda distingue il pulsante principale dalle azioni secondarie usando colore e contorno.")

#figura("/assets/immagini/teoria-diagrammi-flusso/Screenshot_2026-10-21_alle_01.36.00.png", 105mm, alt: "Interfacce di Spotify e Apple Music: menu, immagini, titoli e controlli permettono di scegliere e ascoltare musica.")

#nota[

Un'interfaccia ben progettata è chiara e intuitiva, cioè permette all’utente di utilizzare il programma anche senza leggere il manuale di istruzioni. Una confusa può rendere difficile utilizzare anche un programma tecnicamente valido.

]

#pagebreak()
#sperimenta[
== Scriviamo un programma con l’IA

Un programma, in fondo, è *testo scritto in una forma che il computer può interpretare ed eseguire*. Non è un testo qualsiasi: deve rispettare le regole di un linguaggio di programmazione, un po' come una ricetta deve essere scritta in modo preciso per poter essere seguita.

Possiamo chiedere a un assistente come ChatGPT di scrivere questo testo al posto nostro. La richiesta che scriviamo all'IA si chiama *prompt*.

#nota[


#etichetta[Prompt]
#v(4pt)

Crea un semplice videogioco didattico utilizzando i linguaggi HTML, CSS e JavaScript, tutto all’interno di un unico file HTML.

Il gioco deve avere una mappa in cui un omino, controllato con le frecce della tastiera, deve muoversi e schivare dei mostri che si spostano autonomamente. Se un mostro tocca l’omino, la partita termina. Il giocatore guadagna punti sopravvivendo e può ricominciare la partita con un pulsante.

Realizza una grafica colorata e intuitiva, con punteggio visibile e difficoltà crescente nel tempo. Il gioco deve funzionare direttamente nel browser, senza installare programmi o utilizzare librerie esterne.

]

#nota[
#etichetta[1. Noi scriviamo una richiesta per l'IA]
#v(4pt)
«Crea un piccolo gioco in cui un personaggio si muove con le frecce della tastiera e deve evitare degli ostacoli».
#v(9pt)
]

#nota[
#etichetta[2. L'IA genera il testo del programma]
#v(4pt)
L'IA restituisce istruzioni scritte in un linguaggio che il computer può eseguire, per esempio HTML, CSS e JavaScript per un gioco che funziona nel browser.
#v(9pt)
]

#nota[
#etichetta[3. Il computer esegue il programma]
#v(4pt)
Quando il testo è scritto correttamente e viene aperto nell'ambiente adatto, il computer interpreta le istruzioni e il gioco può funzionare.
#v(9pt)
]

]
#pagebreak()

= Algoritmi <algoritmi>

== Che cos'è un algoritmo?

Un *algoritmo* è una sequenza ordinata e precisa di istruzioni che permette di risolvere un problema o svolgere un compito.

Possiamo pensarlo come una ricetta: per ottenere il risultato desiderato dobbiamo seguire passaggi chiari, nell'ordine giusto.

#nota[

*Esempio quotidiano: preparare una merenda*

+ Prendere due fette di pane.
+ Spalmare la marmellata.
+ Unire le fette.
+ Mettere la merenda su un piatto.

Se le istruzioni sono chiare e vengono eseguite nell'ordine previsto, sappiamo che cosa fare.

]

== Prima di scrivere l'algoritmo: capire il problema

Prima di decidere i passaggi, rispondiamo a tre domande.

#fase([Obiettivo], [
Che cosa dobbiamo ottenere?
])

#fase([Dati in ingresso], [
Quali informazioni ci servono?
])

#fase([Risultato], [
Che cosa dobbiamo produrre o mostrare?
])

*Esempio: calcolare il prezzo scontato di un prodotto*

- Obiettivo: calcolare quanto si paga dopo lo sconto.
- Dati in ingresso: prezzo iniziale e percentuale di sconto.
- Risultato: prezzo finale.

#pagebreak()
== Un algoritmo, passo dopo passo

#nota[

*Problema: calcolare il prezzo scontato*

+ Leggere il prezzo iniziale.
+ Leggere la percentuale di sconto.
+ Calcolare l'importo dello sconto: prezzo iniziale × percentuale ÷ 100.
+ Sottrarre l'importo dello sconto dal prezzo iniziale.
+ Mostrare il prezzo finale.
]

*Proviamolo con dei dati:* prezzo iniziale = 50 €; sconto = 10%.

- Importo dello sconto: 50 × 10 ÷ 100 = 5 €
- Prezzo finale: 50 − 5 = 45 €

L'algoritmo non è legato a questi numeri: può essere riutilizzato anche con altri prezzi e percentuali.

== Le caratteristiche di un buon algoritmo

#block(breakable: false)[
#table(columns: (26%, 37%, 37%), table.header([Caratteristica],[Che cosa significa],[Esempio]),
[*Chiaro e non ambiguo*],
[Ogni istruzione deve avere un significato preciso.],
[«Sottrai 5 dal prezzo» è più chiaro di «fai lo sconto».],
[*Ordinato*],
[I passaggi devono essere disposti nell'ordine corretto.],
[Prima calcolo lo sconto, poi lo sottraggo al prezzo.],
[*Finito*],
[Deve arrivare alla conclusione dopo un numero finito di passaggi.],
[Dopo aver mostrato il prezzo finale, il compito termina.],
[*Generale*],
[Deve funzionare per tutti i casi previsti dal problema, non soltanto per un esempio.],
[Deve funzionare sia con 50 € sia con 80 €.],
[*Corretto*],
[Deve produrre il risultato atteso quando si seguono le istruzioni con dati validi.],
[Con 50 € e sconto del 10%, deve ottenere 45 €.]
)
]

#pagebreak()
== Come possiamo rappresentare un algoritmo?

Un algoritmo può essere descritto in modi diversi:

- *A parole:* spieghiamo i passaggi con frasi semplici.
- *Con un diagramma di flusso:* rappresentiamo i passaggi con blocchi collegati da frecce.
- *Con un linguaggio di programmazione:* scriviamo istruzioni che il computer può interpretare o eseguire.

== Controllare l’algoritmo

Prima di considerare concluso un algoritmo, facciamo una prova manuale: seguiamo ogni passaggio usando dati concreti e verifichiamo che cosa succede.

*Esempio: sommare due numeri*

#block(breakable: false)[
#table(columns: (60%, 40%), table.header([Passaggio],[Valore o azione]),
[1. Leggi il primo numero],
[7],
[2. Leggi il secondo numero],
[4],
[3. Calcola la somma],
[7 + 4 = 11],
[4. Mostra il risultato],
[11]
)
]

#heading(level: 2, numbering: none)[Ripasso]

- Un algoritmo è una sequenza ordinata e precisa di istruzioni.
- Prima di costruirlo, individuiamo obiettivo, dati in ingresso e risultato.
- Un buon algoritmo deve essere chiaro, ordinato, finito, generale e corretto.
- Possiamo rappresentarlo con parole, diagrammi di flusso o un linguaggio di programmazione.
- Per controllarlo, seguiamo i passaggi con dati di prova.

#heading(level: 2, numbering: none)[Verifica se hai capito]

+ Che cos'è un algoritmo?

+ Perché un algoritmo deve essere generale?

+ Nel problema del prezzo scontato, quali sono i dati in ingresso?

+ Qual è la differenza tra algoritmo e programma?

+ Come possiamo verificare un algoritmo?
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
