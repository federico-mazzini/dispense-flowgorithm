# Dispense Flowgorithm

Dispensa di informatica dedicata a **Flowgorithm**: teoria, screenshot, diagrammi ed esercizi. Il documento è scritto in [Typst](https://typst.app/) e viene convertito in PDF su una macchina virtuale di **GitHub Actions**.

## Contenuto del repository

```text
dispense-flowgorithm/
├── .github/workflows/genera-pdf.yml  # Workflow GitHub Actions
├── immagini/                         # Screenshot e diagrammi (PNG/JPG/SVG)
├── flowgorithm.typ                   # Documento Typst modificabile
├── .gitignore
└── README.md
```

## Quando viene generato il PDF

La compilazione **non viene eseguita dopo ogni commit**. Può essere avviata in due modi:

1. **Commit selezionato:** includere esattamente `[pdf]` nel messaggio dell'ultimo commit inviato al branch `main`, per esempio `Aggiorna impaginazione [pdf]`. GitHub avvia il workflow, che esegue il job soltanto se trova questo marcatore.
2. **Avvio manuale:** su GitHub aprire **Actions → Genera PDF Flowgorithm → Run workflow** (selezionare `main`).

Nei normali commit senza `[pdf]` su `main`, l'evento può apparire nella cronologia delle Actions, ma **il job di compilazione viene saltato**: non viene prodotto un nuovo PDF. Se invii contemporaneamente più commit, il filtro `[pdf]` controlla *l'ultimo commit* del push.

## Come scaricare il PDF

1. Aprire **Actions** nel repository.
2. Selezionare l'esecuzione **Genera PDF Flowgorithm** con stato verde (completata con successo).
3. Nella sezione **Artifacts**, scaricare **dispense-flowgorithm**.
4. Estrarre lo ZIP: contiene `flowgorithm.pdf`.

L'artifact viene conservato per 90 giorni (o meno, se le impostazioni del repository impongono una durata inferiore). Il PDF non viene automaticamente aggiunto ai commit Git.

## Compilare in locale (opzionale)

Installare [Typst 0.15.1](https://github.com/typst/typst/releases/tag/v0.15.1) e i font *Linux Libertine O* e *Inter*, poi eseguire dalla cartella principale del progetto:

```bash
typst compile flowgorithm.typ flowgorithm.pdf
```

La famiglia serif deve comparire esattamente come `Linux Libertine O` (alcune distribuzioni dei font usano nomi diversi). Per verificare i font disponibili usare `typst fonts`. Se i font sono in una cartella locale, aggiungere `--font-path /percorso/font` al comando di compilazione. Per aggiornare automaticamente il PDF durante le modifiche usare `typst watch flowgorithm.typ flowgorithm.pdf`. Il PDF locale è escluso da Git.

Su Ubuntu i font si installano con `sudo apt-get install fonts-linuxlibertine fonts-inter fonts-liberation` (Liberation serve anche ai testi nei diagrammi SVG). Su macOS e Windows installare le stesse famiglie prima di compilare.

Il workflow usa Ubuntu 24.04, installa i font dalla distribuzione, configura Typst 0.15.1 tramite `typst-community/setup-typst@v5`, compila e pubblica il risultato con `actions/upload-artifact@v4`. I font servono a riprodurre l'impaginazione desiderata.

## Modificare il documento

Modificare `flowgorithm.typ` lasciando le immagini referenziate nella cartella `immagini/`. I file sono collegati tramite percorsi relativi: rinominando un'immagine, occorre aggiornare anche il suo riferimento nel sorgente.

## Licenze e utilizzo

Il repository è pubblico per facilitare la condivisione e la consultazione del materiale. **La pubblicazione non implica automaticamente una licenza di riutilizzo** per testo, screenshot o immagini; prima di aggiungere una licenza aperta occorre verificare la provenienza e i diritti dei singoli materiali.

## Diagrammi di flusso

`diagrammi-flusso.typ` contiene la dispensa precedente a Flowgorithm: cinque fasi di esercizi e cinque diagrammi da eseguire. Le immagini originali sono in `immagini/diagrammi-flusso/`.

Per compilarla con gli stessi font:

```bash
typst compile diagrammi-flusso.typ diagrammi-flusso.pdf
```

Il workflow esistente, attivato con `[pdf]` o manualmente, genera entrambi i documenti. Per questa dispensa scaricare l'artifact **dispense-diagrammi-flusso**, che contiene `diagrammi-flusso.pdf`.

Il materiale fornito elenca anche una Fase 7 sui cicli semplici, ma il relativo file non è incluso nell'esportazione: la sezione non è presente in questa versione.
