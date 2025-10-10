# Symmetry-aware neural backflow for the 2D t–V model

This repository contains research code for **symmetry-aware neural backflow** variational wavefunctions applied to the **two-dimensional t–V model** of interacting spinless fermions.  
The implementation builds on **NetKet 3** (JAX) for variational Monte Carlo (VMC) and uses **QuSpin** for exact diagonalization (ED) benchmarks.


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


```

---
## How to Cite

If you use this repository or parts of its method, please cite both the **paper** and the **software**.

### 🧠 Research article
> **Spectroscopy of two-dimensional interacting lattice electrons using symmetry-aware neural backflow transformations**  
> *Imelda Romero, Jannes Nys, and Giuseppe Carleo*  
> *Communications Physics* **8**, 19 (2025)  
> [https://doi.org/10.1038/s42005-025-01955-z](https://doi.org/10.1038/s42005-025-01955-z)

```bibtex
@article{Romero_2025,
  title = {Spectroscopy of two-dimensional interacting lattice electrons using symmetry-aware neural backflow transformations},
  author = {Romero, Imelda and Nys, Jannes and Carleo, Giuseppe},
  journal = {Communications Physics},
  year = {2025},
  volume = {8},
  number = {1},
  pages = {19},
  doi = {10.1038/s42005-025-01955-z},
  publisher = {Springer Science and Business Media LLC},
  issn = {2399-3650},
  month = {January},
  url = {https://doi.org/10.1038/s42005-025-01955-z}
}


@software{Romero_tV_model_2025,
  author = {Imelda Romero},
  title = {tV_model — Symmetry-aware neural backflow for the 2D t–V model},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/imi-hub/tV_model}
}
