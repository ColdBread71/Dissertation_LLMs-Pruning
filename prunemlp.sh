#!/bin/bash
#SBATCH --job-name=mlp
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem=40G
#SBATCH --time=01:00:00
#SBATCH --output=mlp.log
#SBATCH --error=error_mlp.log

module load Anaconda3/2022.05
source activate prune_llm
python main.py --model meta-llama/Llama-2-7b-hf --prune_method wanda --sparsity_ratio 0.9 --sparsity_type unstructured --module_names mlp.up_proj mlp.gate_proj mlp.down_proj --save out/threshold/Llama-2-7b/unstructured/wanda/
