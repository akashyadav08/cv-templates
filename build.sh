#!/usr/bin/env bash
# usage: ./build.sh <profile> [outname]
#   Injects contact.tex if present (real phone number, gitignored).
#   Falls back to the public placeholder if absent.
set -e
P="$1"; OUT="${2:-$1}"
CV="$(cd "$(dirname "$0")" && pwd)"
[ -f "$CV/profiles/$P.tex" ] || { echo "no profile: $P"; exit 1; }
T=$(mktemp -d)
[ -f "$CV/AllocQ_new_icon.png" ] && cp "$CV/AllocQ_new_icon.png" "$T/"
[ -f "$CV/contact.tex" ] && cp "$CV/contact.tex" "$T/"
{ cat "$CV/preamble.tex"; echo '\begin{document}'; cat "$CV/profiles/$P.tex"; echo '\end{document}'; } > "$T/main.tex"
( cd "$T" && pdflatex -interaction=nonstopmode -halt-on-error main.tex >/dev/null 2>&1 \
  && pdflatex -interaction=nonstopmode -halt-on-error main.tex >/dev/null 2>&1 ) \
  || { echo "LaTeX failed for $P:"; grep -A4 '^!' "$T/main.log" | head -20; rm -rf "$T"; exit 1; }
mkdir -p "$CV/out"; cp "$T/main.pdf" "$CV/out/$OUT.pdf"
echo "built: out/$OUT.pdf ($(pdfinfo "$CV/out/$OUT.pdf" | awk '/Pages/{print $2}') page)"
rm -rf "$T"
