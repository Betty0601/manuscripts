# PQC Pre-Training with QIS and Lean Playground Exercises

Training repo: practice proofs from Nielsen & Chuang, *Quantum Computation and
Quantum Information* (QIS), and build the skills needed for ML-KEM/ML-DSA
QROM security reductions.
Training roadmap (层级①前置训练路线): modern cryptographic game proofs →
LWE/Module-LWE → QROM → PQC standard proofs.

## Template

- IACR Transactions class `iacrtrans.cls` (official, CC0) — vendored in the
  repository root because it is **not** shipped with TeX Live.
- `cryptocode.sty` (official CTAN release, LPPL) — also vendored so Overleaf
  and local builds use the exact same file.
- Compiler: pdfLaTeX (TeX Live 2026 on Overleaf).

## Project structure

- `main.tex` — root document (compiles with pdfLaTeX; BibTeX via `latexmk`).
- `sections/` — top-level paper sections.
- `lean-playground/` — Lean 4/Mathlib exercises plus a standalone paper
  (`lean-playground/paper/playground.tex`) and the appendix included by
  `main.tex`; see its README for details.
- `cryptobib/` — curated subset of the CryptoBib project
  (https://github.com/cryptobib/export): `abbrev.bib` (venue macros) and
  `crypto.bib` (QROM/ML-KEM/ML-DSA entries). Only cited entries are kept;
  the full ~40 MB upstream `crypto.bib` can be dropped in if needed.
- `references.bib` — textbooks and Lean/Mathlib references.

## Compile

```bash
latexmk -pdf main.tex
```

On Overleaf, set the compiler to pdfLaTeX and use Menu → GitHub → Pull to
sync changes from this repository.
