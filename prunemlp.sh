#!/bin/bash
#SBATCH --job-name=prune
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem=40G
#SBATCH --time=01:00:00
#SBATCH --output=prune.log
#SBATCH --error=error_prune.log

python main.py --model meta-llama/Meta-Llama-3-8B-Instruct --prune_method wanda --sparsity_ratio 0.5 --sparsity_type unstructured --save out/llama3/unstructured/wanda/
