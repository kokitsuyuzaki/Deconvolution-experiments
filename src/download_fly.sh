#!/bin/bash
#$ -l nc=4
#$ -p -50
#$ -r yes
#$ -q node.q

#SBATCH -n 4
#SBATCH --nice=50
#SBATCH --requeue
#SBATCH -p node03-06
SLURM_RESTART_COUNT=2

wget -P data/fly/ https://cloud.flycellatlas.org/index.php/s/LAEybPc2HZnpzKs/download/s_fca_biohub_head_10x.h5ad --no-check-certificate

touch $1