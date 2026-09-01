# Encoded or Enforced? What Makes a Private Agent Network Private

FAST @ NeurIPS 2026. LaTeX source.

Agent networks encode relationships in two places: as **text** (agent cards, trust
scores, stated shared goals, tenure) and as **architecture** (who is addressable,
whether a counterpart exposes an interface or a store, what persists). This paper
separates them and asks which one actually changes agent behaviour.

## Build

```bash
make            # or: latexmk -pdf main.tex
```

Compiles as-is with no external style file. **Drop the official `neurips_2026.sty`
into this directory and `main.tex` picks it up automatically** — the fallback
preamble is only there so a clean Overleaf import compiles on the first try.

## Page target

Default build is the **9-page** track. The framework is the contribution — nine
dimensions in two groups, the discovery × access factorial, the seeding protocol,
and six metrics — and at four pages either the seeding methodology (the novelty) or
the results have to be amputated. Several of the intended findings are also
*methodological negatives*, and a negative compressed into a footnote reads as an
excuse.

**To compress to 4 pages**, in `main.tex`:

1. Comment out `\input{sections/04-seeding}` and keep only Table 3 (move it into §3).
2. Comment out `\input{sections/09-related}` and replace with a single paragraph.
3. Comment out `\input{sections/appendix}`.

That lands near four pages without touching §2, §5, §6 or §7.

## Layout

```
main.tex                  preamble, section order, page-target switches
refs.bib                  ⚠ verify every entry against the publisher record
sections/
  00-abstract.tex
  01-intro.tex
  02-framework.tex        nine dimensions, architectural vs textual partition
  03-operationalization.tex  discovery × access 2×2, main-effect decomposition
  04-seeding.tex          how each textual dimension is seeded + validity boundary
  05-tasks-measurement.tex   hidden-profile tasks, six metrics, judge conditions
  06-design.tex           seven predictions, conditions, scale probes, controls
  07-results.tex          ← SKELETON. Structure frozen before runs.
  08-discussion.tex
  09-related.tex
  10-conclusion.tex
  appendix.tex            ← skeleton
```

## Before submission

- [ ] Verify every `refs.bib` entry against the publisher record.
- [ ] Replace the fallback preamble with the official `neurips_2026.sty`.
- [ ] Confirm the venue's actual page limit — not verified at time of writing.
- [ ] Fill §7 and the appendix; the hypothesis→figure map is frozen in §6 and must
      not be revised after seeing data.
- [ ] Anonymize: the paper references a deployed system as the source of the
      architectural knobs. Check every mention.
- [ ] Keep the honesty statement in §5.4 and the preliminary-observation caveat in
      §6.4 — both are load-bearing, not hedges.
