# PQC Level ① Pre-Training with QIS Exercises

Training repo: Practice proofs from Nielsen & Chuang Quantum Computation and Quantum Information (QIS), build skill for ML-KEM/ML-DSA QROM security reduction.
Follow the training roadmap: 层级①前置训练路线：现代密码博弈证明 → LWE/Module-LWE → QROM → PQC standard proofs.

## Template
IACR `iacrtrans` + cryptocode macro package.

## Project Structure
- `sections/`: split tex files for each training module
- `cryptobib/`: IACR cryptobib submodule
- `cryptocode.sty`: cryptocode package
- `main.tex`: root document

## Compile in Codespaces
```bash
latexmk main.tex
```