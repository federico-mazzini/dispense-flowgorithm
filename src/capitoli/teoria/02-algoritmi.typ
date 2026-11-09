#import "/styles/didattica.typ": *

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

== Ripasso

- Un algoritmo è una sequenza ordinata e precisa di istruzioni.
- Prima di costruirlo, individuiamo obiettivo, dati in ingresso e risultato.
- Un buon algoritmo deve essere chiaro, ordinato, finito, generale e corretto.
- Possiamo rappresentarlo con parole, diagrammi di flusso o un linguaggio di programmazione.
- Per controllarlo, seguiamo i passaggi con dati di prova.

== Verifica se hai capito

+ Che cos'è un algoritmo?

+ Perché un algoritmo deve essere generale?

+ Nel problema del prezzo scontato, quali sono i dati in ingresso?

+ Qual è la differenza tra algoritmo e programma?

+ Come possiamo verificare un algoritmo?
