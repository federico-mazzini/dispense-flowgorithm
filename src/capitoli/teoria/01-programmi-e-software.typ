#import "/styles/didattica.typ": *

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

#richiamo[*Idea chiave:* hardware e software collaborano. L’hardware è la parte fissa e stabilisce come è fatto il computer o il telefono, il software è la parte che stabilisce il comportamento. Se si apre Word sul computer, il computer è una macchina che scrive documento. Se si apre un gioco, il computer è una macchina che permette di giocare.

=== Il software è costituito dai programmi
]
#v(10pt)

== Che cos’è un programma?

Un *programma* è un insieme di *istruzioni* che il computer esegue per svolgere un compito: scrivere un documento, cercare informazioni, comunicare, fare calcoli o giocare.

Le istruzioni vengono scritte usando un *linguaggio di programmazione*, seguendo regole precise.

#nota[


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

#nota[

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
#laboratorio[
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
