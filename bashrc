#!bin/bash

source $SCRATCH/DRs/code/legacypipe/bin/bashrc
# git clone https://github.com/dstndstn/tractor.git; cd tractor; git checkout fe9babf -b dr3_version; make
export PYTHONPATH=.:/scratch1/scratchdirs/desiproc/DRs/code/dr4/tractor:${PYTHONPATH}

export UNWISE_COADDS_DIR=/scratch1/scratchdirs/desiproc/unwise-coadds/fulldepth:/scratch1/scratchdirs/desiproc/unwise-coadds
export UNWISE_COADDS_TIMERESOLVED_DIR=/scratch1/scratchdirs/desiproc/unwise-coadds/time_resolved_neo1
export DUST_DIR=/scratch1/scratchdirs/desiproc/dust/v0_0
export LEGACY_SURVEY_DIR=/scratch1/scratchdirs/desiproc/DRs/dr4/legacypipe-dir

# Force MKL single-threaded
# https://software.intel.com/en-us/articles/using-threaded-intel-mkl-in-multi-thread-application
# takes affect b/c bashrc has: module load intel 
export MKL_NUM_THREADS=1

# Try limiting memory to avoid killing the whole MPI job...
#ulimit -S -v 15000000
#ulimit -S -v 30000000
ulimit -a

