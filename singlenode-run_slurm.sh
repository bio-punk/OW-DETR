#!/bin/bash
#
#sBATCH --job-name=owdetr
#SBATCH --gpus=8
#SBATCH --nodes=1
#SBATCH -p gpu_c128
#
# 1节点8卡gpu_c128队列运行

module load anaconda/2022.10 gcc/5.4 cuda/11.1

source activate owdetr

GPUS_PER_NODE=8 ./tools/run_dist_slurm.sh berz deformable_detr 8 configs/OWOD_20230309_split.sh
