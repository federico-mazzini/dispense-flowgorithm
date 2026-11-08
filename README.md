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

Installare Typst e i font *Linux Libertine O* e *Inter*, poi eseguire dalla cartella principale del progetto:

```bash
typst compile flowgorithm.typ flowgorithm.pdf
```

Il workflow usa Ubuntu 24.04, installa i font dalla distribuzione, configura Typst tramite `typst-community/setup-typst@v5`, compila e pubblica il risultato con `actions/upload-artifact@v4`. I font servono a riprodurre l'impaginazione desiderata.

## Modificare il documento

Modificare `flowgorithm.typ` lasciando le immagini referenziate nella cartella `immagini/`. I file sono collegati tramite percorsi relativi: rinominando un'immagine, occorre aggiornare anche il suo riferimento nel sorgente.

### Verifica editoriale

Il sorgente deriva dalla dispensa originale: testo, esercizi e immagini sono stati mantenuti, salvo gli interventi di impaginazione già concordati. **La compilazione Typst del sorgente non è stata ancora confermata su GitHub**: il primo workflow con `[pdf]` servirà anche a verificare gli eventuali errori di compilazione. La precedente anteprima PDF non era stata compilata da Typst.

## Licenze e utilizzo

Il repository è pubblico per facilitare la condivisione e la consultazione del materiale. **La pubblicazione non implica automaticamente una licenza di riutilizzo** per testo, screenshot o immagini; prima di aggiungere una licenza aperta occorre verificare la provenienza e i diritti dei singoli materiali.

## Primo commit nel repository già clonato

1. Estrarre l'archivio ZIP e **copiare il contenuto** nella cartella locale `dispense-flowgorithm` già clonata da GitHub, mantenendo la struttura delle sottocartelle. La cartella `.github` è nascosta su macOS: assicurarsi di copiarla (nel Finder si può mostrare con `Cmd + Shift + .`).
2. Aprire la cartella in Codex e verificare che siano presenti `flowgorithm.typ`, `immagini/`, `.github/workflows/genera-pdf.yml` e `README.md`.
3. Fare il primo commit con un messaggio contenente **`[pdf]`**, per esempio `Prima versione dispensa Flowgorithm [pdf]`, ed eseguire il push su `main`.
4. Aprire [Actions](https://github.com/federico-mazzini/dispense-flowgorithm/actions) e scaricare il PDF dagli artifact quando la compilazione è completata.

In alternativa, dal Terminale nella cartella del repository:

```bash
git add .
git commit -m "Prima versione dispensa Flowgorithm [pdf]"
git branch -M main
git push -u origin main
```

**Nota:** il primo PDF compilato da Typst non è ancora stato verificato localmente; l'esecuzione della Action confermerà la correttezza del sorgente e dell'ambiente di compilazione.
