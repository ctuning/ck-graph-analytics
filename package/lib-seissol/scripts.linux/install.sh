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

COMPILER_TYPE="gcc"
if [ "${CK_CC}" == "icc" ] ; then
   COMPILER_TYPE="intel"
fi

#FIX ME USE CK VARIABLES
# i.e.,  arch: .  Valid values are: ['snoarch', 'dnoarch', 'swsm', 'dwsm', 'ssnb', 'dsnb', 'sknc', 'dknc', 'shsw', 'dhsw', 'sknl', 'dknl'

scons -j ${CK_HOST_CPU_NUMBER_OF_PROCESSORS}  \
       order=6 compileMode=release \
       arch=${CK_SEISSOL_TARGET_ARCH} \
       parallelization=hybrid commThread=yes \
       netcdf=yes netcdfDir=${CK_ENV_LIB_NETCDF} \
       compiler=${COMPILER_TYPE} \
       hdf5=yes hdf5Dir=${CK_ENV_LIB_HDF5}

if [ "${?}" != "0" ] ; then
    echo "Error: compilation failed!"
      exit 1
fi
cp ${INSTALL_DIR}/src/src/version.h ${PREFIX}
if [ "${?}" != "0" ] ; then
    echo "Error: copy version.h failed!"
      exit 1
fi
