#!/usr/bin/env bash
# usage: ./build.sh <profile> [outname]
#   Injects contact.tex if present (real phone number, gitignored).
#   Falls back to the public placeholder if absent.
#
#   If texmf/ is present it is put on the kpathsea search path and its font
#   maps are loaded explicitly. That tree holds the ~50 files this CV actually
#   needs from texlive-fonts-extra (629 MB) and texlive-latex-extra (19 MB),
#   so an ephemeral container can build without apt-get installing either.
#   On a full TeX Live install (Overleaf, a normal laptop) the tree is
#   redundant but harmless: identical files, and re-adding a map line is a
#   no-op for pdftex.
set -e
P="$1"; OUT="${2:-$1}"
CV="$(cd "$(dirname "$0")" && pwd)"
[ -f "$CV/profiles/$P.tex" ] || { echo "no profile: $P"; exit 1; }

MAPS=""
if [ -d "$CV/texmf" ]; then
  export TEXMFHOME="$CV/texmf"
  MAPS='\pdfmapfile{+SourceSansPro.map}\pdfmapfile{+fontawesome5.map}'
fi

T=$(mktemp -d)
[ -f "$CV/AllocQ_new_icon.png" ] && cp "$CV/AllocQ_new_icon.png" "$T/"
[ -f "$CV/contact.tex" ] && cp "$CV/contact.tex" "$T/"
{ cat "$CV/preamble.tex"; [ -n "$MAPS" ] && echo "$MAPS"; echo '\begin{document}'; cat "$CV/profiles/$P.tex"; echo '\end{document}'; } > "$T/main.tex"
( cd "$T" && pdflatex -interaction=nonstopmode -halt-on-error main.tex >/dev/null 2>&1 \
  && pdflatex -interaction=nonstopmode -halt-on-error main.tex >/dev/null 2>&1 ) \
  || { echo "LaTeX failed for $P:"; grep -A4 '^!' "$T/main.log" | head -20; rm -rf "$T"; exit 1; }
mkdir -p "$CV/out"; cp "$T/main.pdf" "$CV/out/$OUT.pdf"
echo "built: out/$OUT.pdf ($(pdfinfo "$CV/out/$OUT.pdf" | awk '/Pages/{print $2}') page)"
rm -rf "$T"
