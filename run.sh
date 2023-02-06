#!/bin/bash
#SBATCH --job-name=m6anet_pipeline
#SBATCH --time=16:00:00
#SBATCH --nodes=1 --ntasks-per-node=1
#SBATCH --account=pas1405
#SBATCH --mail-type=ALL

module load nextflow

export NXF_EXECUTOR="slurm"
nextflow run m6anet.nf -profile slurm -resume
