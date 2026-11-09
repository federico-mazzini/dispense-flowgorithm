# Dispense di informatica: programmi, diagrammi di flusso e Flowgorithm

Tre dispense Typst con un template comune, organizzate come il progetto di comunicazione di riferimento. Testi e immagini restano dedicati all’informatica; lo stile riprende il riferimento con accenti **blu `#0057b8`** al posto del rosso.

## Struttura del repository

```text
dispense-flowgorithm/
├── .github/workflows/genera-pdf.yml
├── assets/
│   ├── immagini/                # Screenshot e immagini raster
│   └── svg/                     # Diagrammi vettoriali
├── dist/                        # PDF compilati, esclusi da Git
├── scripts/
│   └── build.sh                 # Compila tutte e tre le dispense
├── src/
│   ├── main.typ                 # Dispensa Flowgorithm
│   ├── teoria.typ               # Teoria ed esempi svolti
│   ├── esercizi.typ             # Esercizi sui diagrammi di flusso
│   └── capitoli/
│       ├── flowgorithm/         # 5 capitoli
│       ├── teoria/              # 6 capitoli
│       └── esercizi/            # 6 sezioni
├── styles/
│   ├── template.typ             # Font, colori, pagina, titoli e riquadri
│   └── didattica.typ            # Componenti per i contenuti di informatica
├── .gitignore
└── README.md
```

## Compilazione locale

Con **Typst 0.15.1**, dalla radice del repository:

```bash
bash scripts/build.sh
```

Gli output sono:

- `dist/flowgorithm.pdf`
- `dist/teoria-diagrammi-flusso.pdf`
- `dist/esercizi-diagrammi-flusso.pdf`

Il testo usa **Libertinus Serif**, incluso in Typst, come nel progetto di riferimento. Gli SVG conservano i colori dei blocchi e usano font sans serif: su Ubuntu installare `fonts-liberation` per il testo nei diagrammi; su macOS è disponibile Arial.

Per compilare o aggiornare una singola dispensa:

```bash
typst compile --root . src/main.typ dist/flowgorithm.pdf
typst compile --root . --pdf-standard ua-1 src/teoria.typ dist/teoria-diagrammi-flusso.pdf
typst compile --root . src/esercizi.typ dist/esercizi-diagrammi-flusso.pdf
typst watch --root . src/main.typ dist/flowgorithm.pdf
```

Lo script elimina i tre output precedenti prima della compilazione e termina al primo errore. `dist/` e `tmp/` sono esclusi da Git.

## Modificare le dispense

Modificare i capitoli in `src/capitoli/`. Le inclusioni e il loro ordine sono definiti nell’entry point della relativa dispensa. Aggiungere i nuovi capitoli con `#include "capitoli/gruppo/nome.typ"`.

Tutte le impostazioni grafiche condivise sono in `styles/template.typ`: A4, margini, Libertinus Serif a 11 pt, gerarchia dei titoli, testatina, numero di pagina, tabelle e riquadri con barra laterale blu. `styles/didattica.typ` adatta allo stesso stile definizioni, richiami, attività di laboratorio e confronti. Per cambiare il colore di tutte le dispense, modificare soltanto `blu` nel template.

Usare `sperimenta` per le attività pratiche che rinforzano la teoria: produce un riquadro blu completo con il titolo “Sperimenta in laboratorio”. Per ora è usato solo nell’attività con l’IA della teoria. Usare `messaggio` per le frasi chiave centrate, senza numerazione né voce nell’indice. Le normali note, definizioni e fasi non hanno barre laterali; `richiamo` resta riservato a pochi avvisi importanti.

Le immagini usano percorsi dalla radice Typst, per esempio `/assets/svg/teoria-diagrammi-flusso/blocco-selezione.svg`. Compilare sempre con `--root .` dalla radice del repository. Dopo una modifica, compilare e controllare visivamente i PDF, in particolare tabelle e diagrammi.

Flowgorithm e teoria usano numerazione automatica dei titoli. La raccolta di esercizi conserva i nomi delle fasi e la numerazione locale degli esercizi. La teoria mantiene indice, collegamenti, segnalibri, lingua italiana, intestazioni delle tabelle, testi alternativi delle immagini ed esportazione **PDF/UA-1**. La compilazione non sostituisce una verifica completa con lettore di schermo.

## Commit `[pdf]` e GitHub Actions

La compilazione su GitHub si avvia quando l’ultimo commit di un push su `main` contiene **`[pdf]`**, oppure manualmente da **Actions → Genera PDF Flowgorithm → Run workflow**. I push senza marcatore saltano il job.

Il workflow usa lo stesso `scripts/build.sh` della compilazione locale. Dopo un’esecuzione riuscita, nella sezione **Artifacts** sono disponibili:

| Artifact | PDF contenuto |
| --- | --- |
| `dispense-flowgorithm` | `flowgorithm.pdf` |
| `dispense-diagrammi-flusso` | `esercizi-diagrammi-flusso.pdf` |
| `dispense-teoria-diagrammi-flusso` | `teoria-diagrammi-flusso.pdf` |

Gli artifact sono conservati per 90 giorni, salvo limiti del repository. I PDF non vengono aggiunti automaticamente ai commit.

## Contenuti e utilizzo

La teoria raccoglie programmi e software, algoritmi, input/elaborazione/output, blocchi, esempi svolti e decisioni. La raccolta di esercizi comprende cinque fasi e cinque diagrammi da eseguire. Il materiale originale menzionava anche una Fase 7 sui cicli semplici, il cui file non era incluso nell’esportazione: questa sezione resta assente.

Il repository è pubblico per facilitare la consultazione. La pubblicazione non implica una licenza di riutilizzo per testi, screenshot o immagini: prima di aggiungere una licenza aperta occorre verificare provenienza e diritti dei singoli materiali.
