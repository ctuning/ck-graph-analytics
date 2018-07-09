#! /bin/bash

#
# Installation script
#
# See CK LICENSE for licensing details.
# See CK COPYRIGHT for copyright details.
#
# Developer(s):
# - Grigori Fursin, 2017
#
# PACKAGE_DIR
# INSTALL_DIR

echo "Post install script"

#DEST_SRC=`ck find program:demo-projectq`
#echo ${INSTALL_DIR}
#cp ${INSTALL_DIR}/src/examples/*.py ${DEST_SRC}
DEST_SRC=${INSTALL_DIR}/install/bin
MAPLE_DIR=${INSTALL_DIR}/src/Maple
echo ${MAPLE_DIR}
mkdir -p ${DEST_SRC}

echo ${MAPLE_DIR} > ${DEST_SRC}/DGPATH
cp ${INSTALL_DIR}/src/build/SeisSol* ${DEST_SRC}/

## FIX ME Add a package for the mash. No supported anymore ? maybe i link can change?
cd `ck find dataset:seissol-tpv33`
wget https://syncandshare.lrz.de/dl/fi72mQiszp6vSs7qN8tdZJf9/tpv33_gmsh
wget https://syncandshare.lrz.de/dl/fiEi52Xiwwqkf2sNpTrCHjhw/tpv33_gmsh.xdmf

return 0
