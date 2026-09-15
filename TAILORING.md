# CV tailoring — how these templates are meant to be used

Read this before drafting a tailored CV from `profiles/`.

## The governing principle

**Tailoring is selection from true material, not permanent editing of the templates.**

A profile in `profiles/` is a *starting selection*, not a finished CV and not a rulebook.
Drafting a CV for a role means choosing which true material to surface, in what order,
with what emphasis — then compiling to one page.

Two failure modes, both real, both previously committed here:

1. **Inventing.** Adding a skill, a year, a responsibility or a result that isn't true.
2. **Deleting the option.** Removing source material from a template because one role
   didn't need it. That silently forecloses every future role that would have wanted it.

The second is easy to miss because the CV it produced looked fine. If a line doesn't
serve the role in front of you, comment it out or leave it unselected — do not delete it
from the template.

## Three tiers

### Tier 1 — Universal (apply always; factual or mechanical)

| Item | Why |
| --- | --- |
| "FRM Part I" / "Part II candidate Nov 2026" | GARP's own wording. "Level" is wrong. |
| Mercor: `05/2026 -- Present` | Ongoing engagement. |
| Overleaf fallback after `\begin{document}` | `AllocQ_new_icon.png` is absent in Overleaf; without it the mark fails to render. |
| One page | Non-negotiable. Trim, don't spill. |
| Escape every literal `%` as `\%` | An unescaped `%` silently truncates the line. This has shipped a broken CV once. |
| Phone `+61 401919550` inlined for Overleaf delivery | There is no `contact.tex` in Overleaf; without the inline `\renewcommand` the public placeholder renders. |

### Tier 2 — Style (apply always)

- Sparing bold — roughly 1–2 bold spans in the summary, not 5+.
- No editorialising. State the evidence; don't explain why it matters.
  ("rather than frictionless assumptions" is the kind of clause to cut.)
- Name concrete tools inline rather than adjectives — "Spark, Databricks, Snowflake"
  beats "production-scale research infrastructure".
- Specific measured mechanisms over quality-words.
- "Led", not "Owned". Name collaborators rather than framing work as solo.
- Design verbs: "designed structured edge-case tests" beats "evaluated X under Y review".
- AllocQ is **built and deployed / functional**, not a prototype.
- Lead with **5 years**; scope narrower claims alongside ("5 years, including 3 focused on…").
  Never lead below 5.

### Tier 3 — Judgement per role (the actual work)

- **Order experience blocks by relevance to the JD**, not strictly reverse-chronologically.
- **Spend bullets where the JD is** — ~3 on the most relevant role, 1–2 on the rest, ~8 total.
- **Select bullets from `content/inventory.md`**, which holds more true material than any
  single profile carries. This is the point of the inventory: a role that wants the LLM
  research assistant, or the Spark/Databricks ingestion detail, or the VC client report,
  can have it without anything being invented.
- **Use the `\resumeSubheading` role line** for a JD-targeted descriptor after an em dash
  ("Creator / Quantitative Analyst --- Model Development and Validation").
- **Hoist credentials into that subheading** rather than trailing a bullet
  (the UPF line carrying the arXiv link and "funded by the BBVA Foundation").
- **Match specificity to the audience** — drop finance-specific jargon (e.g. SLSQP) when
  the reader is not a finance quant.

## Role-conditional elements

Present in the templates, off by default, marked `% ROLE-CONDITIONAL`. Turn on when the
role earns it. None of these are permanent decisions.

| Element | Default | Turn on when |
| --- | --- | --- |
| finquark website link (header) | off | the JD values a public portfolio, writing, or research comms |
| `\textit{(open to relocate)}` | on | any non-Melbourne role; drop it for Melbourne roles |
| IMC Prosperity prominence | one line in the skills block | trading / market-making desks — then lead with it in the summary |
| Generative & Agentic AI skills line | off in finance-risk profiles | AI/ML, model-risk-of-AI, data science roles |
| AllocQ LLM research assistant bullet | off in finance profiles | any role where LLM/GenAI delivery is relevant |

**Permanently out:** the Languages line (English/Hindi/Spanish). Not a requirement for the
roles being targeted; the section is titled "Technical Skills".

## Delivery

The deliverable is the standalone `.tex`, compiled in Overleaf. Build locally first to
verify it compiles and fits one page — but the `.tex` is what ships, not the PDF.

```
bash build.sh <profile> <outname>
pdfinfo out/<outname>.pdf | grep Pages        # must be 1
pdftotext out/<outname>.pdf - | grep '+61'    # must show the real number
```

When verifying a substitution, **count occurrences** — `grep -c`, not `grep -o | head -1`.
A `head -1` check once hid a duplicated header line that shipped.
