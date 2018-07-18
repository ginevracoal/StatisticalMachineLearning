#!/bin/bash

#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=4
#SBATCH --gres=gpu:kepler:2
#SBATCH --time=4:00:00
#SBATCH --partition=gll_usr_gpuprod
#SBATCH --account=uts18_bortoldl_0

. virtual_jupyter/bin/activate
. nvidia-smi
python /galileo/home/userexternal/gcarbone/individual/code/mnist_original.py
