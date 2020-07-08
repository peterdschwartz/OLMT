#!/bin/bash 
set -x
# compset : 1850GSWCNPRDCTCBC
python global_fullrun.py --point_list point_list --np 1 --machine excl --cpl_bypass --tstep 1 --model_root /home/p40/E3SM  --site AmeriFlux --caseidprefix one --mpilib openmpi --compiler pgi --nyears_ad_spinup 5 --nyears_final_spinup 10  --gswp3 --no_build --nofn --notrans
