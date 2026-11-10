#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p dist
pdfs=(
  dist/1-1-teoria-diagrammi-di-flusso.pdf
  dist/1-2-esercizi.pdf
  dist/2-1-teoria-flowgorithm.pdf
)
esercizi_flowgorithm=src/2-flowgorithm/2-2-esercizi.typ
pdf_esercizi_flowgorithm=dist/2-2-esercizi.pdf

# Un errore non deve lasciare vecchi PDF pubblicabili.
rm -f "${pdfs[@]}" "$pdf_esercizi_flowgorithm"

typst compile --root . --pdf-standard ua-1 src/1-diagrammi-di-flusso/1-1-teoria-diagrammi-di-flusso.typ dist/1-1-teoria-diagrammi-di-flusso.pdf
typst compile --root . src/1-diagrammi-di-flusso/1-2-esercizi.typ dist/1-2-esercizi.pdf
typst compile --root . src/2-flowgorithm/2-1-teoria-flowgorithm.typ dist/2-1-teoria-flowgorithm.pdf

if [[ -s "$esercizi_flowgorithm" ]]; then
  typst compile --root . "$esercizi_flowgorithm" "$pdf_esercizi_flowgorithm"
  pdfs+=("$pdf_esercizi_flowgorithm")
fi

for pdf in "${pdfs[@]}"; do
  test -s "$pdf"
done
