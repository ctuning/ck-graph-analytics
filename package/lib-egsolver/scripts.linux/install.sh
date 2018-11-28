#! /bin/bash

#
# Installation script
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
echo "Preparing vars for EG Solver on GPU/MultiCore ..."



CK_OPENMP="-fopenmp"
if [ "${CK_HAS_OPENMP}" = "0"  ]; then
  CK_OPENMP=""
fi

DEST_DIR=${INSTALL_DIR}/install/bin/

if [ ! -d ${DEST_DIR} ] ; then
      mkdir -p ${DEST_DIR}
  fi

cd ${INSTALL_DIR}/src/src
        make -f Makefile.ck all DEST_DIR=${DEST_DIR} CUDA_HOME=${CUDA_HOME} CUDA_ARCH=${CUDA_ARC} SM_CODE=${CUDA_CODE} SOLVER_VERSION=${VERSION}
        mv ${DEST_DIR}/egsolver ${DEST_DIR}/egsolver_default
        # compile shullef 2
        cp dev_EG_alg_shfl_full_2tpv.cu dev_EG_alg.cu
        make -f Makefile.ck all DEST_DIR=${DEST_DIR} CUDA_HOME=${CUDA_HOME} CUDA_ARCH=${CUDA_ARC} SM_CODE=${CUDA_CODE} SOLVER_VERSION=${VERSION}
        mv ${DEST_DIR}/egsolver ${DEST_DIR}/egsolver_shfl_full_2tpv
        
        # making with shuffle 4:
        cp dev_EG_alg_shfl_full_4tpv.cu dev_EG_alg.cu
        make -f Makefile.ck all DEST_DIR=${DEST_DIR} CUDA_HOME=${CUDA_HOME} CUDA_ARCH=${CUDA_ARC} SM_CODE=${CUDA_CODE} SOLVER_VERSION=${VERSION}
        mv ${DEST_DIR}/egsolver ${DEST_DIR}/egsolver_shfl_full_4tpv
        # making with shuffle 8:
        cp dev_EG_alg_shfl_full_8tpv.cu dev_EG_alg.cu
        make -f Makefile.ck all DEST_DIR=${DEST_DIR} CUDA_HOME=${CUDA_HOME} CUDA_ARCH=${CUDA_ARC} SM_CODE=${CUDA_CODE} SOLVER_VERSION=${VERSION}
        mv ${DEST_DIR}/egsolver ${DEST_DIR}/egsolver_shfl_full_8tpv
        # making with shuffle 16:
        cp dev_EG_alg_shfl_full_16tpv.cu dev_EG_alg.cu
        make -f Makefile.ck all DEST_DIR=${DEST_DIR} CUDA_HOME=${CUDA_HOME} CUDA_ARCH=${CUDA_ARC} SM_CODE=${CUDA_CODE} SOLVER_VERSION=${VERSION}
        mv ${DEST_DIR}/egsolver ${DEST_DIR}/egsolver_shfl_full_16tpv
        mv ${DEST_DIR}/egsolver_default ${DEST_DIR}/egsolver


echo "DEBUG INFO"
pwd
echo $DEST_DIR
echo $CUDA_HOME
echo $CUDA_ARC
echo $CUDA_CODE
echo $CK_CC

if [ "${?}" != "0" ] ; then
  echo "Error: make failed!"
  exit 1
fi


return 0
