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
cd ${INSTALL_DIR}/src/generator
make -f Makefile.AXBC.mpi clean
echo $CK_ENV_LIB_MPI_INCLUDE
make -f Makefile.AXBC.mpi MPI_INC_DIR=${CK_ENV_LIB_MPI_INCLUDE} CC=gcc
if [ "${?}" != "0" ] ; then
    echo "Error: installation of the dependencies failed!"
      exit 1
fi
make -f Makefile.AXBC.mpi install DEST_DIR="../../install/lib"
env
return 0
