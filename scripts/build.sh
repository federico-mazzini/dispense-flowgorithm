#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p dist
# Un errore non deve lasciare vecchi PDF pubblicabili.
rm -f dist/flowgorithm.pdf dist/teoria-diagrammi-flusso.pdf dist/esercizi-diagrammi-flusso.pdf

typst compile --root . src/main.typ dist/flowgorithm.pdf
typst compile --root . --pdf-standard ua-1 src/teoria.typ dist/teoria-diagrammi-flusso.pdf
typst compile --root . src/esercizi.typ dist/esercizi-diagrammi-flusso.pdf

for pdf in dist/flowgorithm.pdf dist/teoria-diagrammi-flusso.pdf dist/esercizi-diagrammi-flusso.pdf; do
  test -s "$pdf"
done
