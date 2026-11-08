// DISPENSA DI TEORIA — fonte: esportazione Notion allegata.
// Le frasi originali sono conservate; cambia soltanto la struttura tipografica.
#set document(title: "Programmi e diagrammi di flusso — teoria", author: "Materiale didattico")
#let ink = rgb("#28292a")
#let rust = rgb("#a4513d")
#let navy = rgb("#254353")
#let faint = rgb("#d6d8d9")
#set page(paper: "a4", margin: (top: 22mm, bottom: 21mm, left: 23mm, right: 22mm),
  footer: context [
    #line(length: 100%, stroke: 0.35pt + faint)
    #v(3pt)
    #grid(columns: (1fr, auto),
      [#text(font: "Inter", size: 7.7pt, fill: navy)[PROGRAMMI E DIAGRAMMI DI FLUSSO · TEORIA]],
      [#text(font: "Inter", size: 7.7pt, fill: navy)[#counter(page).display()]],
    )
  ],
)
#set text(font: "Linux Libertine O", size: 11pt, fill: ink, lang: "it")
#set par(justify: true, leading: 0.58em, spacing: 0.66em)
#set heading(numbering: none)
#show strong: set text(fill: navy)
#show heading.where(level: 1): set text(font: "Inter", size: 17.5pt, weight: "semibold", fill: rust)
#show heading.where(level: 1): set block(above: 20pt, below: 11pt)
#show heading.where(level: 2): set text(font: "Inter", size: 12.5pt, weight: "semibold", fill: navy)
#show heading.where(level: 2): set block(above: 15pt, below: 8pt)
#show heading.where(level: 3): set text(font: "Inter", size: 11.3pt, weight: "semibold", fill: navy)
#show heading.where(level: 3): set block(above: 11pt, below: 7pt)
#let nota(body) = block(width: 100%, above: 9pt, below: 10pt, inset: 9pt, fill: rgb("#f3f5f6"), stroke: (left: 2pt + navy), breakable: false, body)
#let figura(path, larghezza, descrizione) = block(above: 7pt, below: 10pt, breakable: false)[
  #align(center)[#image(path, width: larghezza, alt: descrizione)]
]
#text(font: "Inter", size: 8.8pt, weight: "medium", fill: rust)[INFORMATICA / DISPENSA]
#v(7pt)
#text(font: "Inter", size: 25pt, weight: "semibold", fill: navy)[Programmi e diagrammi di flusso]
#v(6pt)
#line(length: 39%, stroke: 1.4pt + rust)
#v(15pt)



#outline(title: [Contenuti], depth: 1)
#pagebreak()
= Introduzione ai programmi e al software <cap1>

== Hardware e software

#nota[


*HARDWARE*

La parte *fisica* del dispositivo: ciò che possiamo toccare.

Esempi: schermo, tastiera, mouse, processore.

]

#nota[


*SOFTWARE*

Parte NON fisica, tutto ciò che non si può toccare. Sono i programmi che permettono all’hardware di svolgere dei compiti.

Esempi: browser, videogiochi, Excel, Word, Google Drive

]

*Idea chiave:* hardware e software collaborano. L’hardware è la parte fissa e stabilisce come è fatto il computer o il telefono, il software è la parte che stabilisce il comportamento. Se si apre Word sul computer, il computer è una macchina che scrive documento. Se si apre un gioco, il computer è una macchina che permette di giocare.

#nota[

=== Il software è costituito dai programmi

]

== Che cos’è un programma?

Un *programma* è un insieme di *istruzioni* che il computer esegue per svolgere un compito: scrivere un documento, cercare informazioni, comunicare, fare calcoli o giocare.

Le istruzioni vengono scritte usando un *linguaggio di programmazione*, seguendo regole precise.

#nota[


*Programmare significa* descrivere in modo preciso le istruzioni che un computer deve eseguire per raggiungere un risultato.

]

== Utente e programmatore

#nota[


*UTENTE*

Una persona che utilizza il programma per raggiungere un obiettivo.

*Esempio:* studente che usa Word per scrivere appunti, persona che gioca a FIFA.

]

#nota[


*PROGRAMMATORE*

Progetta e realizza il programma, scrivendo le istruzioni che il computer deve eseguire. Le istruzioni sono scritte in un linguaggio di programmazione, uno speciale linguaggio che il computer può capire.

*Esempio:* persona che ha l’idea e crea un gioco online.

]

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

#figura("immagini/teoria-diagrammi-flusso/Screenshot_2026-10-21_alle_01.36.10.png", 105mm, "Due schermate di accesso: la seconda distingue il pulsante principale dalle azioni secondarie usando colore e contorno.")

#figura("immagini/teoria-diagrammi-flusso/Screenshot_2026-10-21_alle_01.36.00.png", 105mm, "Interfacce di Spotify e Apple Music: menu, immagini, titoli e controlli permettono di scegliere e ascoltare musica.")

#nota[

Un'interfaccia ben progettata è chiara e intuitiva, cioè permette all’utente di utilizzare il programma anche senza leggere il manuale di istruzioni. Una confusa può rendere difficile utilizzare anche un programma tecnicamente valido.

]

#pagebreak()
== Scriviamo un programma con l’IA

Un programma, in fondo, è *testo scritto in una forma che il computer può interpretare ed eseguire*. Non è un testo qualsiasi: deve rispettare le regole di un linguaggio di programmazione, un po' come una ricetta deve essere scritta in modo preciso per poter essere seguita.

Possiamo chiedere a un assistente come ChatGPT di scrivere questo testo al posto nostro. La richiesta che scriviamo all'IA si chiama *prompt*.

#nota[


*Prompt*

Crea un semplice videogioco didattico utilizzando i linguaggi HTML, CSS e JavaScript, tutto all’interno di un unico file HTML.
Il gioco deve avere una mappa in cui un omino, controllato con le frecce della tastiera, deve muoversi e schivare dei mostri che si spostano autonomamente. Se un mostro tocca l’omino, la partita termina. Il giocatore guadagna punti sopravvivendo e può ricominciare la partita con un pulsante.
Realizza una grafica colorata e intuitiva, con punteggio visibile e difficoltà crescente nel tempo. Il gioco deve funzionare direttamente nel browser, senza installare programmi o utilizzare librerie esterne.

]

#nota[


*1. Noi scriviamo una richiesta per l'IA*

«Crea un piccolo gioco in cui un personaggio si muove con le frecce della tastiera e deve evitare degli ostacoli».

]

#nota[


*2. L'IA genera il testo del programma*

L'IA restituisce istruzioni scritte in un linguaggio che il computer può eseguire, per esempio HTML, CSS e JavaScript per un gioco che funziona nel browser.

]

#nota[


*3. Il computer esegue il programma*

Quando il testo è scritto correttamente e viene aperto nell'ambiente adatto, il computer interpreta le istruzioni e il gioco può funzionare.

]

#pagebreak()
= Input, elaborazione e output <cap2>

== Come funziona un programma?

Molti programmi possono essere descritti attraverso tre momenti: *ricevono dei dati, li elaborano e producono un risultato*.

#nota[


*INPUT → ELABORAZIONE → OUTPUT*

*Dati in ingresso → Operazioni sui dati → Risultato in uscita*

]

#nota[


*INPUT*

*I dati in ingresso*

Sono le informazioni che servono al programma per svolgere un compito.

*Esempi:* una misura, un prezzo, due numeri inseriti da una persona.

]

#nota[


*ELABORAZIONE*

*Le operazioni sui dati*

Sono i calcoli o le trasformazioni che il programma esegue sui dati ricevuti.

*Esempi:* sommare, moltiplicare, confrontare, ordinare o cercare informazioni.

]

#nota[


*OUTPUT*

*Il risultato in uscita*

È l'informazione che il programma restituisce dopo l'elaborazione.

*Esempi:* un'area calcolata, una media, un prezzo finale, un messaggio o un grafico.

]

#nota[


*Da ricordare:* l'input non deve necessariamente essere digitato da una persona. Un programma può ricevere dati anche da un sensore, da un file o da un altro programma.

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

#nota[


*INPUT*

Lato del quadrato

Esempio: 5 cm

]

#nota[


*ELABORAZIONE*

Area = Lato x Lato

Esempio = 5cm x 5cm

]

#nota[


*OUTPUT*

Area

Esempio: 25 cm²

]

#nota[


*Attenzione:* il programma deve essere generale, non specifico su un esempio.
Non creiamo un programma per calcolare l’area di un quadrato con lato 5cm.
Creiamo un programma per calcolare l’area di un quadrato con lato di qualsiasi misura.

]

#nota[


*Attenzione:* l'output non è l'operazione che eseguiamo, ma il risultato che otteniamo.

]

#pagebreak()
== Altri esempi con la stessa struttura

=== Calcolare l'area di un rettangolo

*Problema:* calcolare l'area conoscendo base e altezza.

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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
== 3. Come riconoscere le tre fasi

Quando leggi un problema, fatti queste domande, nell'ordine.

#nota[


*0. PROBLEMA — Ho capito il problema?*

Ho capito quale problema devo risolvere? Riesco a fare degli esempi?

]

#nota[


*1. INPUT — Che cosa conosco o devo chiedere?*

Quali dati sono necessari per risolvere il problema?

]

#nota[


*2. ELABORAZIONE — Che cosa devo fare con quei dati?*

Quali operazioni, formule o confronti devo eseguire?

]

#nota[


*3. OUTPUT — Che cosa devo ottenere?*

Quale risultato deve essere restituito o mostrato?

]

#nota[


*Un piccolo trucco:* prova a raccontare il problema con questa frase:

«Ricevo \_\_\_\_\_\_, eseguo \_\_\_\_\_\_ e ottengo \_\_\_\_\_\_».

Se riesci a completarla, probabilmente hai individuato le tre fasi.

]


#pagebreak()
= Diagrammi di flusso: i blocchi fondamentali <cap3>

#nota[


Un *diagramma di flusso* rappresenta graficamente i passaggi necessari per risolvere un problema. Ogni forma ha un significato preciso: riconoscere i blocchi ci aiuta a trasformare un problema in una sequenza ordinata di istruzioni.

]

== I tre blocchi fondamentali

=== Inizio e Fine — forma ovale

#figura("immagini/teoria-diagrammi-flusso/blocco_start_fine.svg", 65mm, "Diagramma: INIZIO / FINE; Forma ovale.")

Il blocco *Start/Fine* indica dove comincia e dove termina il diagramma.

- *INIZIO*: è il punto di partenza.
- *FINE*: indica che il procedimento è terminato.

*Importante:* un diagramma deve sempre avere un inizio e una fine.

=== Input e Output — forma a parallelogramma

#figura("immagini/teoria-diagrammi-flusso/blocco_input_output.svg", 65mm, "Diagramma: INPUT / OUTPUT; Forma: parallelogramma.")

Il parallelogramma rappresenta un'operazione di *ingresso o uscita dei dati*.

- *Input*: il programma riceve o legge un dato. Esempio: chiedere all'utente la misura del lato.
- *Output*: il programma comunica o mostra un risultato. Esempio: visualizzare l'area calcolata.

*Importante:* i dati che sono usati poi nell’elaborazione, devono esistere nel blocco di input.

=== Elaborazione — forma rettangolare

#figura("immagini/teoria-diagrammi-flusso/blocco_elaborazione.svg", 65mm, "Diagramma: ELABORAZIONE; Forma: rettangolo.")

Il rettangolo rappresenta un'*operazione eseguita sui dati*, per esempio un calcolo.

Esempi:

- calcolare l'area di un quadrato;
- sommare due numeri;
- calcolare il prezzo dopo uno sconto.


#pagebreak()
== Il primo diagramma di flusso: mettiamo insieme i blocchi

Riprendiamo il problema dell'area del quadrato: il programma legge la misura del lato, calcola l'area e mostra il risultato.

#nota[


*Prima di guardare lo schema, prova a ricostruire i passaggi:* da quale blocco si parte? Dove si inserisce il lato? In quale blocco si calcola l'area? Dove compare il risultato?

]

#figura("immagini/teoria-diagrammi-flusso/diagramma-area-quadrato-blocchi-fondamentali.svg", 100mm, "Diagramma: Area di un quadrato; INIZIO; Leggi lato; area = lato × lato; Mostra area; FINE; Ovale: inizio/fine · Parallelogramma: input/output; Rettangolo: elaborazione · Frecce: ordine dei passaggi.")


== Testo o diagramma?

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
 table.header([Nel testo],[Nel diagramma di flusso]),
[Scriviamo le fasi in una tabella o in un elenco.],
[Usiamo blocchi con forme convenzionali.],
[Descriviamo input, elaborazione e output.],
[Rappresentiamo le stesse fasi in sequenza.],
[Il collegamento tra i passaggi è spiegato dal testo o dall'ordine delle righe.],
[Le frecce mostrano visivamente l'ordine dei passaggi.]
)
]

#nota[

*Importante:* non sono due metodi diversi per risolvere il problema. Sono due modi per descrivere lo stesso ragionamento. Il diagramma di flusso rende visibile il percorso da seguire.

]


*Collegamento con il materiale precedente:* #link(<cap2>)[Input, elaborazione e output] — ripassa il significato dei dati in ingresso, delle operazioni e dei risultati prima di disegnare il diagramma.
#pagebreak()
= Diagrammi di flusso: esempi svolti <cap4>

#nota[


In questa pagina trovi tre esempi svolti. Per ciascun problema partiamo dai dati, individuiamo i calcoli necessari e seguiamo il diagramma di flusso dall'inizio alla fine.

]

== Esempio 1 — Calcolare l'area di un quadrato

*Problema:* ricevere la misura del lato di un quadrato, calcolare l'area e mostrare il risultato.

=== 1. Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
 table.header([Fase],[Descrizione]),
[*Input*],
[La misura del lato, per esempio 4 cm],
[*Elaborazione*],
[area = lato × lato],
[*Output*],
[L'area calcolata: 16 cm²]
)
]

=== 2. Scriviamo il diagramma

#figura("immagini/teoria-diagrammi-flusso/diagramma-area-quadrato.svg", 100mm, "Diagramma: Area di un quadrato; INIZIO; Leggi lato; area = lato × lato; Mostra area; FINE; Le frecce indicano l'ordine dei passaggi..")

Diagramma di flusso per calcolare l'area di un quadrato

#nota[


*Da ricordare:* il lato deve essere ricevuto prima di poter calcolare l'area. Il risultato viene mostrato solo dopo il calcolo.

]


#pagebreak()
== Esempio 2 — Calcolare la somma di due numeri

*Problema:* chiedere due numeri, calcolare la loro somma e visualizzare il risultato.

=== 1. Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
 table.header([Fase],[Descrizione]),
[*Input*],
[Due numeri, per esempio 7 e 5],
[*Elaborazione*],
[somma = numero1 + numero2],
[*Output*],
[La somma: 12]
)
]

=== 2. Scriviamo il diagramma

#figura("immagini/teoria-diagrammi-flusso/diagramma-somma-due-numeri.svg", 100mm, "Diagramma: Somma di due numeri; INIZIO; Leggi numero1; Leggi numero2; somma = numero1 + numero2; Mostra somma; FINE; Prima si acquisiscono entrambi i numeri, poi si calcola la somma..")

Diagramma di flusso per calcolare la somma di due numeri

#nota[


*Da ricordare:* se un calcolo richiede due dati, entrambi devono essere acquisiti prima di eseguire l'operazione.

]


#pagebreak()
== Esempio 3 — Calcolare il prezzo finale dopo uno sconto

*Problema:* un prodotto ha un prezzo iniziale. Il programma chiede anche la percentuale di sconto, calcola lo sconto e mostra il prezzo finale.

=== 1. Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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

=== 2. Scriviamo il diagramma

#figura("immagini/teoria-diagrammi-flusso/811b4a36-f356-4fe2-8818-45ca1ea99374.png", 100mm, "Inizio; leggi prezzo; sconto = prezzo × 10 / 100; prezzo_finale = prezzo − sconto; mostra prezzo_finale; fine. Questo diagramma applica uno sconto fisso del 10%.")
#nota[*Nota sul diagramma:* qui la percentuale è fissata al 10%. Per il caso generale descritto nel testo occorre leggere anche la percentuale e usarla al posto di 10 nel calcolo.]

#nota[


*Da ricordare:* il prezzo e la percentuale sono entrambi input. Se il prezzo è 23 € e la percentuale è 10, lo sconto è 2,30 € e il prezzo finale è 20,70 €.

I blocchi di elaborazione sono 2, perchè sono necessari due calcoli.

]


#pagebreak()
== Consigli pratici

=== Checklist: controllare il diagramma

- Ho inserito un blocco *INIZIO* e un blocco *FINE*?
- Ho usato il parallelogramma per ogni input e output?
- Ho usato il rettangolo per i calcoli?
- Ho collegato i blocchi con le frecce?
- Le frecce si seguono in un ordine chiaro, dall'inizio alla fine e dall'alto in basso?

=== Regola fondamentale: usare sempre gli stessi nomi

Quando scrivi un diagramma, *il nome dato a un'informazione deve rimanere uguale in tutti i blocchi in cui viene utilizzata*. Non cambiare nome allo stesso dato da un blocco all'altro.

- *Input:* assegna un nome chiaro a ogni dato che ricevi.
- *Elaborazione:* usa esattamente gli stessi nomi quando fai i calcoli.
- *Output:* quando mostri il risultato, usa lo stesso nome che gli hai dato durante l'elaborazione.

=== Esempio corretto — Area del quadrato

```
Input: lato
Elaborazione: area = lato × lato
Output: mostra area
```

Il nome `lato` è lo stesso nell'input e nel calcolo. Il risultato si chiama `area` nell'elaborazione e viene mostrato come `area` nell'output.

=== Esempio da evitare

```
Input: lato
Elaborazione: superficie = lato × lato
Output: mostra area
```

Qui il risultato viene chiamato prima `superficie` e poi `area`: non è chiaro se si stia parlando della stessa cosa.
#pagebreak()
= Diagrammi di flusso: le decisioni e il rombo <cap5>

#nota[


Il *rombo* rappresenta una decisione: il programma controlla una condizione e, in base alla risposta, sceglie quale percorso seguire.

]

== A cosa serve il blocco di selezione?

A volte un programma deve scegliere cosa fare in base a una situazione. Il rombo permette di *selezionare quale strada seguire*.

- Se la condizione è vera, il programma segue il percorso *SÌ*.
- Se la condizione è falsa, il programma segue il percorso *NO*.

Le due strade possono portare a operazioni o messaggi diversi e, in seguito, anche ricongiungersi.

#figura("immagini/teoria-diagrammi-flusso/blocco-selezione.svg", 100mm, "Diagramma: Il blocco di selezione; SELEZIONE; Il programma sceglie quale strada seguire.")

#pagebreak()
== Che cos'è la condizione in un blocco di selezione?

Una *condizione* è una domanda precisa che il programma controlla. La risposta è sempre e soltanto una di queste due:

- *SÌ* — la condizione è vera.
- *NO* — la condizione è falsa.

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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

=== Attenzione ai confronti

- `eta > 18` significa *maggiore di 18*: il valore 18 non è incluso.
- `eta >= 18` significa *maggiore o uguale a 18*: il valore 18 è incluso.

#nota[


*Attenzione:* la risposta alla condizione non è un numero o una frase libera: è sempre *SÌ* oppure *NO*. Il programma userà questa risposta per scegliere il percorso.

]

#figura("immagini/teoria-diagrammi-flusso/rombo-condizione-si-no.svg", 100mm, "Diagramma: condizione; SÌ; NO.")

#pagebreak()
== Esempio svolto — Un numero è positivo?

*Problema:* ricevere un numero e comunicare se è maggiore di zero.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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

#figura("immagini/teoria-diagrammi-flusso/diagramma-numero-positivo-con-input.svg", 100mm, "Diagramma: INIZIO; Leggi numero; numero > 0?; SÌ; NO; Mostra “Il numero è positivo”; Mostra “Il numero non è positivo”; FINE.")

Diagramma di flusso: numero positivo

#nota[


*Da ricordare:* zero non è un numero positivo. Se `numero = 0`, la condizione `numero > 0` è falsa e si segue il ramo *NO*.

]

#pagebreak()
== Esempio svolto — Maggiorenne o minorenne?

*Problema:* chiedere l'età e dire se una persona ha almeno 18 anni, per stabilire se può entrare o meno.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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

#figura("immagini/teoria-diagrammi-flusso/diagramma-eta-maggiorenne-con-input.svg", 100mm, "Diagramma: INIZIO; Leggi eta; eta >= 18?; SÌ; NO; Mostra “Puoi entrare”; Mostra “Non puoi entrare”; FINE.")

Diagramma di flusso: età almeno 18 anni

=== Proviamo con alcuni valori

#block(breakable: false)[
#table(columns: (1fr, 1fr, 1fr, 1fr), inset: 6pt, stroke: 0.35pt + faint,
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

#nota[


*Attenzione al simbolo:* `>=` significa «maggiore o uguale». Per questo motivo, anche 18 soddisfa la condizione.

]

#pagebreak()
== Esempio svolto — Numeri uguali, maggiori o minori?

*Problema:* ricevere due numeri, chiamati `a` e `b`, e comunicare se il primo è maggiore del secondo, se il secondo è maggiore del primo oppure se i due numeri sono uguali.

=== Ragioniamo sul problema

#block(breakable: false)[
#table(columns: (30%, 70%), inset: 6pt, stroke: 0.35pt + faint,
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

#figura("immagini/teoria-diagrammi-flusso/confronto-due-numeri.svg", 135mm, "Diagramma: INIZIO; Leggi i due numeri; a e b; a > b?; SÌ; a è maggiore di b; NO; a < b?; SÌ; b è maggiore di a; NO; a e b sono uguali; FINE.")

=== Proviamo con alcuni valori

#block(breakable: false)[
#table(columns: (1fr, 1fr, 1fr, 1fr, 1fr), inset: 6pt, stroke: 0.35pt + faint,
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

#figura("immagini/teoria-diagrammi-flusso/bb02bbf0-04ec-4d29-887f-6bb388fbf5e7.png", 100mm, "Diagramma umoristico in inglese: hai un problema? Se no, non preoccuparti. Se sì, puoi fare qualcosa? In entrambi i casi conclude: non preoccuparti.")

#figura("immagini/teoria-diagrammi-flusso/image.png", 82mm, "Diagramma umoristico in inglese: dovresti dirlo ad alta voce? Una serie di decisioni sul contesto, sulle persone presenti e sulle conseguenze porta a parlare oppure tacere.")


*Ripasso:* #link(<cap2>)[Input, elaborazione e output] · #link(<cap3>)[Diagrammi di flusso: i blocchi fondamentali] · #link(<cap4>)[Diagrammi di flusso: esempi svolti]
