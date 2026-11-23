#import "/styles/template.typ": dispensa
#import "/styles/didattica.typ": *

#show: dispensa.with(
  titolo: "Programmi e algoritmi",
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

#figura("/assets/immagini/teoria-diagrammi-flusso/schermate-accesso.jpg", 105mm, alt: "Due schermate di accesso: la seconda distingue il pulsante principale dalle azioni secondarie usando colore e contorno.")

#figura("/assets/immagini/teoria-diagrammi-flusso/interfacce-musicali.jpg", 105mm, alt: "Interfacce di Spotify e Apple Music: menu, immagini, titoli e controlli permettono di scegliere e ascoltare musica.")

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
