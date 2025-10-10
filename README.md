# tV_model — Symmetry-aware neural backflow for the 2D t–V model

This repository contains research code for **symmetry-aware neural backflow** variational wavefunctions applied to the **two-dimensional t–V model** of interacting spinless fermions.  
The implementation builds on **NetKet 3** (JAX) for variational Monte Carlo (VMC), and uses **QuSpin** for exact diagonalization (ED) benchmarks.

> If you use this code or ideas from it, please **cite the paper and this repository** (see below).

---

## Reference

**Spectroscopy of two-dimensional interacting lattice electrons using symmetry-aware neural backflow transformations**  
[arXiv:2406.09077](https://arxiv.org/pdf/2406.09077)

---

## How to Run

Use a clean Python ≥3.11 environment.

```bash
# Clone this repository
git clone https://github.com/imi-hub/tV_model.git
cd tV_model

# Example 1 — Without symmetry
srun python run_nqs.py --L 8 --Nf 28 --V 2.0 --j 1 --symm 0 --bf 1 --depth 2 --feat 1

# Example 2 — With symmetry
srun python run_nqs.py --L 8 --Nf 28 --V 2.0 --j 1 --symm 1 --charac 0 --bf 1 --gcnn 0 --depth 2 --feat 1

