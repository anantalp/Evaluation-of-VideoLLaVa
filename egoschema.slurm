#!/bin/bash

#SBATCH -c 4
#SBATCH --mem=32G
#SBATCH --time=2-00:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=gpu32
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user an660847@ucf.edu

module avail cuda/cuda-11.6

echo "This is Egoschema original."
CUDA_VISIBLE_DEVICES=0 bash scripts/run_qa_egoschema.sh
echo "end."
