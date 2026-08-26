# CV templates

LaTeX CV profiles for Akash Yadav. One shared preamble, one body per job family.

## Build

```bash
./build.sh <profile> [outname]     # → out/<outname>.pdf
```

Requires TeX Live plus `texlive-fonts-extra` and `texlive-latex-extra`
(for `fontawesome5` and `sourcesanspro`).

## Profiles

| Profile | Job family |
|---|---|
| `investment-risk` | Super funds, investment risk, model validation |
| `investment-analytics` | Investment analytics, pipelines, dashboarding |
| `model-validation-ai` | Model risk, AI / LLM evaluation |
| `quant-trading` | Prop firms, quant research, derivatives |
| `sports-trading` | Wagering markets, pricing, in-play modelling |
| `_archived-blackrock` | Retired |

## Rules

**One preamble.** Never fork it. Five diverging copies is what produced three
different years-of-experience figures across CVs sent to the same market.

**Years.** Every profile leads with 5 years. Where the pitch is narrower, state
the scoped figure explicitly beside it — "5 years, including 3 focused on…".
Never lead with a number below 5.

**New profile** only when two or more structural slots must change (summary noun
and years framing, AllocQ subtitle, lead skills category, education emphasis
order, certifications tail), or when a JD requirement has no home in any existing
skills taxonomy. Otherwise clone the closest and reweight. Name by job family,
never by employer.

**Escape `%`.** An unescaped `%` silently truncates the line. This bit the
DST-INSPIRE entry once already.

## Contact details

`contact.tex` holds the real phone number and is gitignored. Without it the CV
renders a placeholder, so nothing private lands in a public repo.

```latex
\renewcommand{\phonenum}{+61 4XX XXX XXX}
```
