# Dispense di informatica

[**Dispense Flowgorithm**](https://federico-mazzini.github.io/dispense-flowgorithm/2-1-teoria-flowgorithm.pdf) · [**Dispense diagrammi di flusso**](https://federico-mazzini.github.io/dispense-flowgorithm/1-1-teoria-diagrammi-di-flusso.pdf)

Ultime versioni pubblicate per la classe.

## Next step: capitolo 6 — I cicli

Da preparare come capitolo di teoria dopo «Mettiamo in pratica», prima della sezione Esercizi. Questa è una traccia di lavoro: il capitolo non è ancora stato aggiunto alla dispensa.

L’obiettivo è imparare a ripetere una parte di programma senza duplicare i blocchi, capire quando fermarsi e scegliere il ciclo adatto. Collegare la spiegazione alla lista bar: prima un ordine, poi più ordini, infine l’aggiunta di prodotti fino alla conferma.

### 6.1 — Perché servono i cicli

- Riprendere la differenza tra sequenza, scelta e ripetizione: un `If` decide se eseguire delle istruzioni; un ciclo permette di ripeterle.
- Chiamare **iterazione** una singola esecuzione delle istruzioni ripetute, che costituiscono il **corpo del ciclo**.
- Distinguere la ripetizione di un numero noto di volte dalla ripetizione che dipende dai dati o dalle risposte dell’utente.
- Mostrare un piccolo programma con istruzioni duplicate e confrontarlo con una versione che usa un ciclo.

### 6.2 — I tre blocchi di ciclo di Flowgorithm

I tre blocchi sono **While**, **Do** e **For**. Presentare per ciascuno il simbolo, la finestra delle impostazioni e un breve esempio da eseguire passo passo.

| Blocco | Come funziona | Quante volte può essere eseguito | Quando sceglierlo |
| --- | --- | --- | --- |
| **While** | Controlla una condizione prima del corpo. Ripete finché la condizione è vera; termina quando è falsa. | Anche zero: se la condizione è falsa all’inizio, il corpo viene saltato. | Quando potrebbe non esserci nulla da elaborare o il numero delle ripetizioni dipende dai dati. |
| **Do** | Esegue il corpo e poi controlla la condizione. Ripete se la condizione è vera; termina quando è falsa. | Almeno una volta. | Per chiedere un dato e verificarlo, oppure svolgere un’operazione e chiedere se ripeterla. |
| **For** | Fa assumere a una variabile i valori di un intervallo, con un passo e una direzione. L’avanzamento è gestito dal blocco. | Dipende dall’intervallo e dal passo; può anche non entrare nel corpo. | Quando si conosce il numero delle ripetizioni prima di iniziare il ciclo, anche se quel numero viene inserito dall’utente. |

**While: cose da spiegare**

- La condizione deve poter essere valutata già al primo controllo: le variabili coinvolte devono avere un valore.
- Nel corpo deve poter cambiare qualcosa che influisce sulla condizione, per esempio attraverso una nuova lettura o un aggiornamento.
- Esempio iniziale: visualizzare i numeri da 1 a 5, poi provare una condizione inizialmente falsa.

**Do: cose da spiegare**

- La prima esecuzione avviene prima di qualsiasi controllo.
- In Flowgorithm la condizione indica quando **continuare**, non quando uscire: non confonderla con una condizione «ripeti fino a quando».
- Esempio iniziale: chiedere una quantità e richiederla se è negativa.
- Collegamento alla lista bar: completare un ordine e poi chiedere se inserirne un altro.

**For: cose da spiegare**

- Variabile di controllo, valore iniziale, valore finale, passo e direzione crescente o decrescente.
- Con passo 1, da 1 a 5 vengono usati i valori 1, 2, 3, 4 e 5: il valore finale è incluso se viene raggiunto.
- Il passo indica quanto avanzare; per scendere si imposta la direzione decrescente. Non usare un passo nullo.
- Non aggiornare manualmente la variabile di controllo nel corpo: l’avanzamento è già gestito dal blocco.
- Esempio iniziale: una tabellina; poi leggere N dall’utente e ripetere un’operazione N volte.

### 6.3 — Cose da sapere prima di costruire programmi più lunghi

- **Inizializzazione:** distinguere la dichiarazione di una variabile dall’assegnazione del suo valore iniziale.
- **Aggiornamento:** comprendere assegnazioni come `contatore = contatore + 1` e `totale = totale + importo`: si usa il valore precedente per calcolare quello nuovo.
- **Condizione di continuazione:** saper dire quando il programma ripete e quando termina, anche con parole proprie.
- **Ciclo infinito:** riconoscere una condizione che rimane sempre vera e capire come interrompere l’esecuzione di un programma che non termina.
- **Confini:** distinguere `<` da `<=`; controllare la prima e l’ultima iterazione e gli errori di una ripetizione in più o in meno.
- **Dentro e fuori dal ciclo:** decidere che cosa inizializzare una volta, che cosa ripetere e che cosa mostrare soltanto alla fine.
- **Letture successive:** se l’uscita dipende dalla risposta dell’utente, occorre permettere di dare una nuova risposta durante la ripetizione.
- **Tipi di dati:** usare interi per quantità e contatori, reali per prezzi e medie; scegliere un tipo adatto alle risposte e alle opzioni del menu.
- **Traccia dell’esecuzione:** seguire i valori delle variabili con l’esecuzione passo passo e una tabella sul quaderno.

### 6.4 — Utilizzi dei cicli

| Utilizzo | Che cosa si vuole ottenere | Esempio da proporre |
| --- | --- | --- |
| **Ripetizione di un programma** | Ripetere lo stesso procedimento su dati nuovi. | Calcolare un ordine della lista bar e chiedere se inserirne un altro: esercizio 3.2. |
| **Menu** | Riproporre le scelte fino alla selezione di una voce di uscita. | Scegliere prodotto e quantità fino a «Termina ordine»: esercizio 3.3. Le condizioni gestiscono le scelte, il ciclo ripropone il menu. |
| **Accumulazione** | Sommare progressivamente i valori letti o calcolati. | Totale della lista bar, somma di incassi o di spese. Un accumulatore di somma parte da 0. |
| **Conteggio** | Contare gli elementi elaborati o quelli che soddisfano una condizione. | Numero di ordini oppure numero di ordini con totale superiore a una soglia. Un contatore parte da 0 e aumenta di 1 quando serve. |
| **Validazione degli input** | Richiedere un dato finché rispetta le regole. | Non accettare quantità negative o voci di menu non previste. Il valore 0 rimane valido per un prodotto non richiesto. |
| **Ripetizione N volte** | Elaborare un numero di dati stabilito prima del ciclo. | Leggere N voti, calcolare N preventivi o stampare una tabellina. |
| **Valore sentinella** | Terminare l’inserimento quando compare un valore speciale. | Leggere importi fino a -1: il valore -1 serve per uscire e non va sommato né contato. |
| **Media** | Combinare una somma e un conteggio. | Media degli importi inseriti. Se non è stato inserito alcun dato, non dividere per zero. |
| **Minimo e massimo** | Conservare il valore più piccolo o più grande incontrato. | Ordine più economico e più costoso. Inizializzare dal primo dato valido e gestire il caso senza dati. |
| **Raggiungimento di una soglia** | Ripetere finché un totale raggiunge un obiettivo. | Aggiungere versamenti fino a raggiungere una somma da raccogliere. |

Distinguere **contatore** e **accumulatore**: il primo conta gli elementi, il secondo combina i loro valori. Se si introduce anche un accumulatore di prodotto, il valore iniziale è 1, non 0.

Nella lista bar distinguere inoltre il totale di un singolo ordine dall’eventuale incasso di tutti gli ordini: il primo riparte da zero per ogni ordine, il secondo deve conservare quanto già raccolto.

### 6.5 — Progressione didattica proposta

1. Ripetere una scrittura: numeri da 1 a 5, osservando che cosa cambia a ogni iterazione.
2. Confrontare While e Do con una condizione inizialmente falsa: zero esecuzioni contro una.
3. Presentare For e la ripetizione N volte, confrontandola con un conteggio costruito con While.
4. Chiedere nuovamente un dato non valido.
5. Ripetere l’intero programma della lista bar: esercizio 3.2.
6. Introdurre accumulatore e menu per comporre un ordine: esercizio 3.3.
7. Aggiungere contatori, medie, minimo e massimo con esercizi separati.
8. Solo in un secondo momento, combinare cicli: uno per i prodotti dell’ordine e uno per gli ordini successivi, distinguendo bene quali variabili azzerare.

### 6.6 — Verifiche da far fare agli studenti

- Dire prima dell’esecuzione quante volte ci si aspetta che venga eseguito il corpo.
- Provare zero ripetizioni quando consentito, una ripetizione e più ripetizioni.
- Provare il valore iniziale e quello finale di un intervallo.
- Per i menu, provare l’uscita immediata, scelte ripetute e una scelta non valida quando è prevista la validazione.
- Per la lista bar, verificare che un nuovo ordine non includa il totale del precedente e che terminare un ordine vuoto dia totale 0.
- Controllare i casi senza dati prima di calcolare medie, minimi e massimi.

### Riferimenti ufficiali

Nomi e funzionamento dei tre blocchi verificati nella documentazione di Flowgorithm:

- [While](https://www.flowgorithm.org/documentation/while.html)
- [Do](https://www.flowgorithm.org/documentation/language/do.html)
- [For](https://www.flowgorithm.org/documentation/language/for.html)
