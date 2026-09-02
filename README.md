# Encoded or Enforced? What Makes a Private Agent Network Private

FAST @ NeurIPS 2026. LaTeX source.

Agent networks encode relationships in two places: as **text** (agent cards, trust
scores, stated shared goals, tenure) and as **architecture** (who is addressable,
whether a counterpart exposes an interface or a store, what persists). This paper
separates them and asks which one actually changes agent behaviour.

**Code and data:** [waterdoog/agent-network-study](https://github.com/waterdoog/agent-network-study)
— the harness, the four cells, the attribute axis, and the analyses that produce every
number in the paper.

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

## Format compliance — checked against the official NeurIPS 2026 instructions

Verified against the NeurIPS 2026 formatting instructions on 2026-09-02.

| Requirement | Status |
|---|---|
| Only `neurips_2026.sty` is supported; tweaking style files may be grounds for desk rejection | conditional load; fallback is clearly marked and never ships to a submission |
| **Submission omits both `final` and `preprint`** — that is what anonymizes and adds review line numbers | fixed (was `[final]`, which would have de-anonymized) |
| Abstract limited to **one paragraph** | fixed (was three) |
| Headings lower case except first word and proper nouns | fixed across all sections |
| 10 pt / 11 pt leading, 5.5 in x 9 in text block, 1.5 in left margin | fallback geometry now matches, so the page count here is honest |
| Paragraphs separated by 5.5 pt, no indentation | set in fallback |
| Display math via AMS environments (bare TeX breaks review line numbers) | `align` used throughout |
| References do not count toward the page limit | bibliography after body |
| Appendix after references, no separate PDF, no page limit | `\appendix` after `\bibliography` |
| Checklist follows the references, does not count toward the limit | stub at `sections/checklist.tex`, commented out — **required for the main conference, usually waived for workshops; confirm** |
| Do not refer to review line numbers in the text | n/a |
| Fonts must be Type 1 or embedded TrueType | check with `pdffonts main.pdf` before submitting |

### Length

Current build is 12 pages: **body ~10.5, references ~1, appendix ~1.5**. References and
appendix do not count, so the body is already over a 9-page limit **with §7 Results still
a 173-word skeleton**. Written out, Results adds roughly 2--2.5 pages.

Cut list, in the order that costs least:

| Cut | Saves |
|---|---|
| §4 prose collapsed into Table 3 | ~0.6 p |
| §9 compressed to one paragraph | ~0.4 p |
| §2.2 and §2.3 merged (they overlap §1 and §8) | ~0.5 p |
| §5 scoring rules and honesty statement moved to appendix | ~0.5 p |
| §6 predictions rendered as a table | ~0.4 p |
| §8 threats-to-validity moved to appendix | ~0.3 p |

That is ~2.7 pages, landing the body near 7.8 and leaving room for Results. Do it now
rather than at the end.

### Venue

**The FAST workshop could not be verified.** Two searches of the NeurIPS 2026 workshop
listings returned no workshop by that name. Other NeurIPS 2026 agent workshops set
limits of 2, 4, 6, and 9 pages, so the target here is a guess until the CFP is in hand.
Confirm before cutting: the difference between a 4-page and a 9-page target is a
different paper, not a shorter one.

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
