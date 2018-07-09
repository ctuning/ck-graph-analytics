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
mkdir -p ${DEST_SRC}

cp ${INSTALL_DIR}/src/build/checkpoint ${DEST_SRC}/



return 0
