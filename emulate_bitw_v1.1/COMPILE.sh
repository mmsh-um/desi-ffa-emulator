#!/bin/bash

### settings
rootDIR=/global/cfs/cdirs/desi/survey/catalogs/main/mocks/FAemu_preliminary/sikandar/Updated_Code_CFC/emulate_bitw_v1.1
inFILE=/emulate_bitw_lightcone_ntile.f90
xFILE=/emulate_bitw_lightcone_ntile
echo "rootDIR = $rootDIR"
echo "inFILE  = $inFILE"
echo "xFILE   = $xFILE"

### load lib
#module load intel

#module swap PrgEnv-intel PrgEnv-gnu
#module load openmpi

### compile
#ifort $rootDIR$inFILE -o $rootDIR$xFILE -mcmodel medium -shared-intel
#gfortran $rootDIR$inFILE -o $rootDIR$xFILE -ffree-line-length-none -mcmodel=medium
#gfortran $rootDIR$inFILE -o $rootDIR$xFILE -ffree-line-length-none
#gfortran -fopenmp $rootDIR$inFILE -o $rootDIR$xFILE -ffree-line-length-none -mcmodel=medium
#ftn -fopenmp $rootDIR$inFILE -o $rootDIR$xFILE -ffree-line-length-none
ftn $rootDIR$inFILE -o $rootDIR$xFILE -ffree-line-length-none