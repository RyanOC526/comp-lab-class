#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=2:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=2dWCA

module purge 

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for i in 1.01 1.02 1.03 1.04 1.05 1.06 1.07 1.08 1.09
    do
        mpirun lmp -var density $i -in ../Inputs/2dWCA.in -log density_$i.log
    done
    
