#!/bin/bash
#SBATCH --job-name=hello
#SBATCH --account=project_465001194
#SBATCH --partition=small
#SBATCH --reservation=CSC_summer_school_cpu
#SBATCH --time=00:05:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=5
#SBATCH --cpus-per-task=1

srun my_mpi_hello
