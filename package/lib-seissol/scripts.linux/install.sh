#! /bin/bash

#
# Extra installation script
#
# See CK LICENSE.txt for licensing details.
# See CK COPYRIGHT.txt for copyright details.
#
# Developer(s):
# - Grigori Fursin, grigori.fursin@cTuning.org, 2017
#
cd ${INSTALL_DIR}/src/
PREFIX=${INSTALL_DIR}/install
mkdir -p $PREFIX

#FIX ME USE CK VARIABLES
# i.e.,  arch: .  Valid values are: ['snoarch', 'dnoarch', 'swsm', 'dwsm', 'ssnb', 'dsnb', 'sknc', 'dknc', 'shsw', 'dhsw', 'sknl', 'dknl'
echo $CK_ENV_LIB_HDF5
scons -j 4  \
       order=6 compileMode=release \
       arch=dhsw \
       parallelization=hybrid commThread=yes \
       netcdf=yes netcdfDir=${CK_ENV_LIB_NETCDF} \
       hdf5=yes hdf5Dir=${CK_ENV_LIB_HDF5}

if [ "${?}" != "0" ] ; then
    echo "Error: compilation failed!"
      exit 1
fi
