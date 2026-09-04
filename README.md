# Twitter or WhatsApp? Public and Private Agent Networks Are Different at the Edge

Two submission builds over one shared body. Both are double-blind, non-archival,
and use the official NeurIPS style; a paper accepted at one may be submitted to
the other.

| Build | Venue | Body limit | Current |
|---|---|---|---|
| `main-agenticweb.tex` | NeurIPS 2026 Workshop on Agentic Web (Atlanta) | 9 pages | 9 |
| `main-fast.tex` | FAST @ NeurIPS 2026, Foundations of Agentic Systems Theory (Paris) | 7 pages | 7 |

Both deadlines: **5 September 2026, 23:59 AoE**. References and appendices are
excluded from both limits.

## How the two builds differ

One body, one set of sections. `main-fast.tex` defines `\COMPACTBUILD` before
reading `main-body.tex`, which sets `\ifcompact`. Sections carry
`\ifcompact ... \else ... \fi` around the passages that differ, so the two
versions cannot drift: an edit to a shared paragraph lands in both.

The compact build keeps the full argument and spends less on illustration —
Figure 1 and three of the five figures move to the appendix, the per-axis prose
in §2 folds into one paragraph because Table 1 already carries it, and §5's four
findings become a table. Nothing is dropped; the appendix does not count against
either limit.

```bash
pdflatex main-agenticweb && bibtex main-agenticweb && pdflatex main-agenticweb && pdflatex main-agenticweb
pdflatex main-fast       && bibtex main-fast       && pdflatex main-fast       && pdflatex main-fast
```

## Style file

`neurips_2025.sty` is the official style; NeurIPS has not published a 2026 file
yet. `main-body.tex` patches the footer to say 2026 and passes
`dblblindworkshop`. When `neurips_2026.sty` ships, swap the package line and drop
the two `\renewcommand`s.

## Anonymity

Both builds are anonymous and contain no repository URL, institution or author
name. Add the code link at camera-ready, not before.
