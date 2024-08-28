#! /bin/bash

#SBATCH --chdir /home/iromero/sims/tV_model/src
#SBATCH --output /home/iromero/sims/tV_model/src/output/run_now%A_%a.out


#SBATCH --array=1-1
#SBATCH --job-name=SMF

#SBATCH --nodes=16
#SBATCH --ntasks=256
#SBATCH --cpus-per-task=2
##SBATCH --mem-per-cpu=8192

##SBATCH --mem=350000

#SBATCH --time 23:00:00
#SBATCH --qos=parallel
#SBATCH --comment="scitas_cost"


module load gcc
module load openmpi
#module load mvapich2
module load python


##SBATCH -p debug

source ~/venv/netket_jed/bin/activate


export OPENBLAS_NUM_THREADS=1
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

SAMPLE_LIST=($(<grid.txt))
V=${SAMPLE_LIST[${SLURM_ARRAY_TASK_ID}]}
echo "V input: ${V} for ARRAY_TASK_ID ${SLURM_ARRAY_TASK_ID}"
cmd="srun python run_nqs.py --L 8 --Nf 28 --V ${V} --j 1 --symm 0 --bf 1 --depth 2 --feat 1"
#1 --depth 1 --feat 16 "

echo "COMMAND: $cmd"
eval $cmd


#cmd="srun python run_nqs.py --L 8 --Nf 28 --V ${V} --j 1 --symm 1 --charac 27 --bf 0"

#cmd="srun python run_nqs.py --L 6 --Nf 18 --V ${V} --J 1 --J_rbm 1  --symm 1 --charac 17 --bf 0"
#cmd="srun python run_nqs.py --L 8 --Nf 32 --V ${V} --J 1 --J_rbm 1  --symm 1 --charac 29 --bf 0"
