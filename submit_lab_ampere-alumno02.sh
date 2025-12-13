#!/bin/bash

#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno02/execs/lab3
#SBATCH -J lab2-3.3
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=4

for (( i = 1; i < 5; i++)); do
  ./file-cut.sh "./Sample${i}.fastq" &
done
wait
