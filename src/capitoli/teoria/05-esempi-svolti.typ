#import "/styles/didattica.typ": *

= Diagrammi di flusso: esempi svolti <cap4>

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

#richiamo[*Da ricordare:* il lato deve essere ricevuto prima di poter calcolare l'area. Il risultato viene mostrato solo dopo il calcolo.

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

#richiamo[*Da ricordare:* se un calcolo richiede due dati, entrambi devono essere acquisiti prima di eseguire l'operazione.

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

#richiamo[*Da ricordare:* il prezzo e la percentuale sono entrambi input. Se il prezzo è 23 € e la percentuale è 10, lo sconto è 2,30 € e il prezzo finale è 20,70 €.

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

#richiamo[
```
Input: lato
Elaborazione: area = lato × lato
Output: mostra area
```
]

Il nome `lato` è lo stesso nell'input e nel calcolo. Il risultato si chiama `area` nell'elaborazione e viene mostrato come `area` nell'output.

=== Esempio da evitare

#richiamo[
```
Input: lato
Elaborazione: superficie = lato × lato
Output: mostra area
```
]

Qui il risultato viene chiamato prima `superficie` e poi `area`: non è chiaro se si stia parlando della stessa cosa.
