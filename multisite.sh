#!/bin/bash 
set -x
# compset : 1850GSWCNPRDCTCBC
python global_fullrun.py --point_list point_list --np 1 --machine summit --cpl_bypass --tstep 1 --model_root /ccs/home/pschwar3/E3SM --runroot /gpfs/alpine/csc395/scratch/pschwar3 --site AmeriFlux --caseidprefix pgiacc_test --mpilib spectrum-mpi --compiler pgiacc --nyears_ad_spinup 5 --nyears_final_spinup 10  --gswp3 --no_build --nofn --notrans --nopftdyn
