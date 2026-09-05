# Revised drafts for discussion (2026-09-05)

Two revised builds of the paper, one per venue, for discussion before the
2026-09-05 AoE deadline. **They do not modify any source file in this repository**;
the current `main` builds (`main-agenticweb.tex`, `main-fast.tex`) are untouched.

| File | Venue | Body |
|---|---|---|
| `AgenticWeb_revised.pdf` | NeurIPS 2026 Workshop on Agentic Web (9-page limit) | 8 pages |
| `FAST_revised.pdf` | FAST @ NeurIPS 2026 (7-page limit) | 7 pages |

Both keep the framework-first skeleton of `main` (three edge dimensions, both
venue builds over one body, experiments in the appendix) but rewrite the body and
reverse three claims made on `main`:

1. the bounded arm is not described as "weakly dominated" — cost bases are unresolved;
2. the 58-vs-1 fabrication comparison is withdrawn (exposure logging counts every planted
   line as seen when a card is asked, never logs `list_store` previews, matches numbers
   against raw HTML, and resets between beats);
3. the E = 0 control (+0.034, CI [−0.067, 0.137]) is not read as the formation effect
   "vanishing".

`REVIEW-2026-09-05.md` is a line-referenced review of the revised drafts, including the
two blocking defects that must be fixed before either is submitted (the empty §5.1
placeholder and the audit-style provenance disclaimers).

The LaTeX source of the revised drafts is not yet in this repository; this PR carries the
PDFs so the text can be compared before the sources are merged.
