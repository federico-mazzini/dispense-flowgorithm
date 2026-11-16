#!/usr/bin/env python3
"""Ricompila in dist dopo ogni modifica, anche senza notifiche del filesystem."""

import argparse
from pathlib import Path
import subprocess
import time


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "sorgente", nargs="?", default="src/2-flowgorithm/2-1-teoria-flowgorithm.typ"
    )
    sorgente = Path(parser.parse_args().sorgente)
    if not sorgente.is_file() or sorgente.suffix != ".typ":
        parser.error(f"Specificare un file Typst esistente: {sorgente}")

    Path("dist").mkdir(exist_ok=True)
    pdf = Path("dist") / sorgente.with_suffix(".pdf").name
    comando = ["typst", "compile", "--root", "."]
    if sorgente.stem == "1-1-teoria-diagrammi-di-flusso":
        comando.extend(["--pdf-standard", "ua-1"])
    comando.extend([str(sorgente), str(pdf)])

    def stato():
        # Includere tutti i sorgenti permette di rilevare anche nuovi import.
        percorsi = {sorgente}
        for cartella in ("src", "styles", "assets"):
            percorsi.update(p for p in Path(cartella).rglob("*") if p.is_file())
        risultato = {}
        for percorso in percorsi:
            try:
                info = percorso.stat()
                risultato[percorso] = (info.st_mtime_ns, info.st_size)
            except FileNotFoundError:
                pass  # Un salvataggio atomico può sostituire il file durante la scansione.
        return risultato

    print(f"Rigenerazione automatica: {sorgente} -> {pdf} (Ctrl+C per terminare)", flush=True)
    precedente = None
    while True:
        corrente = stato()
        if corrente != precedente:
            precedente = corrente
            esito = subprocess.run(comando, check=False)
            messaggio = "PDF aggiornato" if esito.returncode == 0 else "Errore: correggi e salva di nuovo"
            print(f"[{time.strftime('%H:%M:%S')}] {messaggio}", flush=True)
        time.sleep(0.5)


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass
