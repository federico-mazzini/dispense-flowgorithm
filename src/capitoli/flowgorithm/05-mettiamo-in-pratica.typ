#import "/styles/didattica.typ": *

#block(breakable: false)[
= Mettiamo in pratica

Finora abbiamo visto come inserire i blocchi, dichiarare le variabili ed eseguire un programma. Proviamo ora a costruire dei programmi semplici e a capire la differenza tra un programma che funziona soltanto con alcuni valori già stabiliti e uno che può essere utilizzato con numeri sempre diversi.


== Sommare due numeri già stabiliti

Scriviamo un programma che somma due numeri. In questo primo esempio, i numeri sono scelti direttamente nel programma attraverso due istruzioni di assegnazione.

*Replicare il diagramma* riportato sotto in Flowgorithm ed eseguirlo.


#figura("/assets/svg/Flowgorithm_5_1_somma_valori_fissi.svg", 78mm)

Dopo averlo eseguito, rispondere alle domande:

 + Quale risultato viene visualizzato?
 + Il programma chiede all'utente di inserire i due numeri?
 + Se volessimo sommare due numeri diversi, per esempio 10 e 12, cosa dovremmo cambiare?
 + Il programma è corretto? Qual è il suo limite?

]

#pagebreak()

== Lo stesso programma, ma più generico

Scriviamo lo stesso programma in modo diverso: questa volta i numeri non sono già stabiliti, ma vengono *chiesti all'utente durante l'esecuzione*.

Replicare il diagramma su flowgorithm e rispondere alle domande sotto sul quaderno.


#figura("/assets/svg/Flowgorithm_5_2_somma_input.svg", 82mm)

Eseguire il programma più volte, inserendo ogni volta due numeri diversi.

Confrontare i due programmi:

 + Che cosa è cambiato rispetto al precedente?
 + Quali istruzioni sono state sostituite e quali sono state aggiunte?
 + Perché possiamo dire che questo programma è *più generico*?
 + Possiamo sommare numeri diversi senza modificare il diagramma?


#pagebreak()

== Esercizio: l'area di un quadrato

Il programma qui sotto calcola l'area di un quadrato il cui lato è già stato stabilito all'interno del programma.
Replicare il diagramma su flowgorithm e rispondere alle domande sotto sul quaderno.


#figura("/assets/svg/Flowgorithm_5_3_area_quadrato_valore_fisso.svg", 87mm)

Dopo averlo eseguito, rispondere alle domande:

 + Quale area viene visualizzata?
 + Modificare il programma in modo che sia l'utente a inserire la misura del lato.
 + Provare il programma con lati diversi, senza modificare nuovamente il diagramma.
 + Quale blocco è stato necessario aggiungere? Quale istruzione non serve più nella sua forma originale?


#pagebreak()

== Esercizio: far capire cosa fa il programma

Un programma può produrre il risultato corretto ma essere poco chiaro per chi lo utilizza.

Il diagramma qui sotto calcola il quadrato di un numero. Chiede un valore e alla fine visualizza il risultato. Quando eseguiamo il programma però, non ci sono messaggi che spiegano all’utente cosa inserire e cosa rappresenta il numero visualizzato.


#figura("/assets/svg/Flowgorithm_5_4_quadrato_numero_senza_messaggi.svg", 87mm)

*Attività*

 + Replicare il diagramma ed eseguirlo.
 + Immaginare di utilizzare il programma senza aver visto il diagramma: si capisce quale numero inserire? Si capisce cosa rappresenta il risultato?
 + Aggiungere delle istruzioni di *Scrittura (Output)* per comunicare all'utente cosa deve inserire e che cosa viene mostrato alla fine.
 + Eseguire di nuovo il programma. Ora è più comprensibile?

*Da ricordare:* le istruzioni di output non servono soltanto a visualizzare risultati. Possono anche aiutare l'utente a capire come utilizzare il programma.
