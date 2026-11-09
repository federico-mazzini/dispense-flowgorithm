#import "/styles/didattica.typ": *

= I blocchi di Flowgorithm

Quando si crea un programma sono già presenti *Inizio* e *Fine*. Le istruzioni si inseriscono tra questi due blocchi facendo clic sulla freccia di collegamento: compare un menu per scegliere il blocco da aggiungere.


#figura("/assets/immagini/Screenshot_2026-11-05_alle_17.53.55.jpg", 94mm)


== Lettura (Input)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.19.45.png", 27mm)

Permette al programma di *ricevere un dato dall'utente*, normalmente dalla tastiera. Per esempio, il programma chiede l'età e conserva il numero inserito in una variabile. 
È il blocco di input già visto nei diagrammi di flusso. Attenzione: per leggere qualsiasi dato è sempre necessario utilizzare prima un blocco di dichiarazione (vedi sotto)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.00.24.jpg", 102mm)


== Scrittura (Output)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.19.50.png", 27mm)

Permette di *mostrare informazioni sullo schermo*: messaggi, numeri, valori di variabili o risultati di calcoli. Per esempio, può visualizzare `"Benvenuto!"` oppure il prezzo finale. Corrisponde al blocco di output.


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.00.45.jpg", 102mm)


== Dichiarazione (Declare)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.19.32.png", 27mm)

Serve a *creare un dato di input o di ouput* (che da qui in avanti chiameremo *variabile*), indicando il suo nome e il tipo di dato che conterrà. Per esempio, se vogliamo creare un programma che somma due numeri, dovremo creare due variabili, una per ogni numero. È una novità rispetto ai diagrammi di flusso realizzati finora. (Approfondimento nelle sezioni successive)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_17.53.21.jpg", 102mm)


== Assegnazione (Assign)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.19.39.png", 27mm)

Permette di *inserire o modificare il valore di un dato* (variabile). Per esempio, `prezzo = 20` memorizza il numero 20 nella variabile `prezzo`. È il blocco di elaborazione visto nei diagrammi di flusso.


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.00.56.jpg", 102mm)


== Condizione (If)


#figura("/assets/immagini/Screenshot_2026-11-05_alle_18.20.00.png", 27mm)

Corrisponde al blocco di selezione (rombo) nei diagrammi di flusso. Permette al programma di *prendere una decisione*: controlla se una condizione è vera o falsa e sceglie quali istruzioni eseguire. Per esempio, `eta >= 18` permette di distinguere tra maggiorenni e minorenni.

Per ora non consideriamo altri blocchi.
