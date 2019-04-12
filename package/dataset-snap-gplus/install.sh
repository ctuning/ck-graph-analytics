#!/bin/bash

cd ${INSTALL_DIR}
echo "Download "
# list.txt contains: graph_name n_vertices n_edges max_vertex_d
# if list.txt exits remove it
if [ ! -e ${TAR_SRC_NAME} ]; then
echo "Downloading ..."

wget ${SRC_LINK} 
fi

if [ ! -d ${TAR_SRC_NAME} ]; then
echo "Unzipping ..."
gunzip ${TAR_SRC_NAME}
fi

head -n 5 ${GRAPH_NAME}.txt



