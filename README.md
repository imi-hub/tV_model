# tV_model


This repository contains the source code for the Backflow Neural Network (inspired by arXiv:1807.10770).

The method has been implemented in Python using Netket3 library and for ED results Quspin package.


To run:
cmd="srun python run_nqs.py --L 8 --Nf 28 --V ${V} --j 1 --symm 0 --bf 1 --depth 2 --feat 1"

cmd="srun python run_nqs.py --L 8 --Nf 28 --V ${V} --j 1 --symm 1 --charac 0 --bf 1 --gcnn 0 --depth 2 --feat 1"



