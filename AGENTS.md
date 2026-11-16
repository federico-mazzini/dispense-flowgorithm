# Istruzioni operative per l’agente

I sorgenti Typst sono organizzati per argomento, con un file di teoria e uno di esercizi. Il file degli esercizi di Flowgorithm è predisposto per il materiale futuro. Lo stile riprende il progetto di comunicazione di riferimento con accenti **blu `#0057b8`**.

Il `README.md` è destinato alla classe e contiene soltanto i due collegamenti alle dispense pubblicate. Conservare in questo file le istruzioni operative per lavorare al repository.

## Struttura del repository

```text
dispense-flowgorithm/
├── .github/workflows/genera-pdf.yml
├── assets/
│   └── immagini/                # Screenshot e diagrammi in formato JPG
├── dist/                        # PDF compilati, esclusi da Git
├── scripts/
│   ├── build.sh                 # Compila le dispense disponibili
│   ├── watch.sh                 # Avvia la ricompilazione al salvataggio
│   └── watch.py                 # Controlla periodicamente le modifiche
├── src/
│   ├── 1-diagrammi-di-flusso/
│   │   ├── 1-1-teoria-diagrammi-di-flusso.typ
│   │   └── 1-2-esercizi.typ
│   └── 2-flowgorithm/
│       ├── 2-1-teoria-flowgorithm.typ
│       └── 2-2-esercizi.typ
├── styles/
│   ├── template.typ             # Font, colori, pagina, titoli e riquadri
│   └── didattica.typ            # Componenti per i contenuti di informatica
├── .gitignore
├── AGENTS.md                    # Istruzioni operative per l’agente
└── README.md                    # Collegamenti alle dispense per la classe
```

## Compilazione locale

Con **Typst 0.15.1**, dalla radice del repository:

```bash
bash scripts/build.sh
```

Gli output sono:

- `dist/1-1-teoria-diagrammi-di-flusso.pdf`
- `dist/1-2-esercizi.pdf`
- `dist/2-1-teoria-flowgorithm.pdf`
- `dist/2-2-esercizi.pdf` quando il sorgente degli esercizi di Flowgorithm contiene materiale

Il testo usa **Libertinus Serif**, incluso in Typst, come nel progetto di riferimento.

Per compilare o aggiornare una singola dispensa:

```bash
typst compile --root . --pdf-standard ua-1 src/1-diagrammi-di-flusso/1-1-teoria-diagrammi-di-flusso.typ dist/1-1-teoria-diagrammi-di-flusso.pdf
typst compile --root . src/1-diagrammi-di-flusso/1-2-esercizi.typ dist/1-2-esercizi.pdf
typst compile --root . src/2-flowgorithm/2-1-teoria-flowgorithm.typ dist/2-1-teoria-flowgorithm.pdf
typst watch --root . src/2-flowgorithm/2-1-teoria-flowgorithm.typ dist/2-1-teoria-flowgorithm.pdf
```

Lo script elimina gli output precedenti prima della compilazione e termina al primo errore. `dist/` e `tmp/` sono esclusi da Git.

### Rigenerazione automatica al salvataggio

Avvia dalla radice del repository:

```bash
bash scripts/watch.sh
```

Finché il comando resta attivo, ogni salvataggio di `src/2-flowgorithm/2-1-teoria-flowgorithm.typ` rigenera `dist/2-1-teoria-flowgorithm.pdf`. Anche le modifiche agli stili e alle immagini utilizzati aggiornano il PDF. Per interrompere, premi `Ctrl+C`; riavvia il comando nella sessione di lavoro successiva.

Per seguire un'altra dispensa, passa il suo percorso:

```bash
bash scripts/watch.sh src/1-diagrammi-di-flusso/1-1-teoria-diagrammi-di-flusso.typ
```

## Modificare le dispense

Modificare i capitoli direttamente nel file Typst della dispensa, nella cartella dell’argomento in `src/`.

Tutte le impostazioni grafiche condivise sono in `styles/template.typ`: A4, margini, Libertinus Serif a 11 pt, gerarchia dei titoli, testatina, numero di pagina, tabelle e riquadri con barra laterale blu. `styles/didattica.typ` adatta allo stesso stile definizioni, richiami, attività di laboratorio e confronti. Per cambiare il colore di tutte le dispense, modificare soltanto `blu` nel template.

Usare `sperimenta` per le attività pratiche che rinforzano la teoria: produce un riquadro blu completo con il titolo “Sperimenta in laboratorio”. Per ora è usato solo nell’attività con l’IA della teoria. Usare `messaggio` per le frasi chiave centrate, senza numerazione né voce nell’indice. Le normali note, definizioni e fasi non hanno barre laterali; `richiamo` resta riservato a pochi avvisi importanti.

Le immagini usano percorsi dalla radice Typst, per esempio `/assets/immagini/teoria-diagrammi-flusso/blocco-selezione.jpg`. Compilare sempre con `--root .` dalla radice del repository. Dopo una modifica, compilare e controllare visivamente i PDF, in particolare tabelle e diagrammi.

Le due dispense di teoria usano la numerazione automatica dei titoli. La teoria di Flowgorithm contiene le attività di laboratorio del capitolo 5, «Mettiamo in pratica», e i dieci esercizi sulle condizioni del capitolo 6. Nel capitolo 6 usare «Realizzare» nelle consegne, senza chat, soluzioni o suggerimenti sui blocchi da utilizzare. Gli esercizi sui diagrammi di flusso conservano i nomi delle fasi e la numerazione locale degli esercizi. La teoria sui diagrammi di flusso mantiene indice, collegamenti, segnalibri, lingua italiana, intestazioni delle tabelle, testi alternativi delle immagini ed esportazione **PDF/UA-1**. La compilazione non sostituisce una verifica completa con lettore di schermo.

## Commit `[pdf]` e GitHub Actions

La compilazione su GitHub si avvia quando l’ultimo commit di un push su `main` contiene **`[pdf]`**, oppure manualmente da **Actions → Genera PDF Flowgorithm → Run workflow**. I push senza marcatore saltano il job.

Il workflow usa lo stesso `scripts/build.sh` della compilazione locale. Dopo un’esecuzione riuscita, nella sezione **Artifacts** sono disponibili:

| Artifact | PDF contenuto |
| --- | --- |
| `1-1-teoria-diagrammi-di-flusso` | `1-1-teoria-diagrammi-di-flusso.pdf` |
| `1-2-esercizi` | `1-2-esercizi.pdf` |
| `2-1-teoria-flowgorithm` | `2-1-teoria-flowgorithm.pdf` |
| `2-2-esercizi` | `2-2-esercizi.pdf`, quando disponibile |

Gli artifact sono conservati per 90 giorni, salvo limiti del repository. I PDF non vengono aggiunti automaticamente ai commit.

## Pubblicazione su GitHub Pages

Il workflow `.github/workflows/genera-pdf.yml`, dopo una compilazione riuscita su `main`, pubblica il contenuto di `dist/` su GitHub Pages, come nel repository di comunicazione. Il job di pubblicazione richiede i permessi `pages: write` e `id-token: write` e usa l’ambiente `github-pages`.

Per la prima pubblicazione, impostare **Settings → Pages → Build and deployment → Source → GitHub Actions** nel repository GitHub. Eseguire quindi il workflow su `main`, manualmente oppure con un push il cui ultimo commit contiene `[pdf]`. I link diventano disponibili dopo la prima pubblicazione riuscita e restano invariati agli aggiornamenti successivi:

- Flowgorithm: `https://federico-mazzini.github.io/dispense-flowgorithm/2-1-teoria-flowgorithm.pdf`.
- Diagrammi di flusso: `https://federico-mazzini.github.io/dispense-flowgorithm/1-1-teoria-diagrammi-di-flusso.pdf`.

Anche gli altri PDF prodotti dalla build sono pubblicati con il loro nome in `dist/`. Gli artifact di Actions restano disponibili per il download indipendentemente da Pages. Se la compilazione o la pubblicazione fallisce, i link continuano a servire l’ultima versione pubblicata con successo.

## Contenuti e utilizzo

La teoria raccoglie programmi e software, algoritmi, input/elaborazione/output, blocchi, esempi svolti e decisioni. La raccolta di esercizi comprende cinque fasi e cinque diagrammi da eseguire. Il materiale originale menzionava anche una Fase 7 sui cicli semplici, il cui file non era incluso nell’esportazione: questa sezione resta assente.

Il repository è pubblico per facilitare la consultazione. La pubblicazione non implica una licenza di riutilizzo per testi, screenshot o immagini: prima di aggiungere una licenza aperta occorre verificare provenienza e diritti dei singoli materiali.
