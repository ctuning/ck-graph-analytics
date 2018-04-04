#! /bin/bash

#
# Installation script for Caffe.
#
# See CK LICENSE for licensing details.
# See CK COPYRIGHT for copyright details.
#
# Developer(s):
# - Flavio Vella, 2018.
#

# PACKAGE_DIR
# INSTALL_DIR

echo "**************************************************************"
echo "Preparing vars for BC ..."



CK_OPENMP="-fopenmp"
if [ "${CK_HAS_OPENMP}" = "0"  ]; then
  CK_OPENMP=""
fi

DEST_DIR=${INSTALL_DIR}/install/bin/

if [ ! -d ${DEST_DIR} ] ; then
      mkdir -p ${DEST_DIR}
  fi

cd ${INSTALL_DIR}/src/src
      make \
           DEST_DIR=${DEST_DIR}  \
           GRAPH_GEN_LIB=$CK_ENV_LIB_GRAPH_GENERATOR_LIB \
           MPI_HOME=${CK_ENV_LIB_MPI} \
           CUDA_HOME=${CUDA_HOME} \
           CUB_INCLUDE= ${CK_ENV_LIB_CUB_INCLUDE} \
           CUDA_ARCH=${CUDA_ARC} 


if [ "${?}" != "0" ] ; then
  echo "Error: make failed!"
  exit 1
fi


return 0
