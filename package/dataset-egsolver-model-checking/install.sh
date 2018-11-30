#!/bin/bash

cd ${INSTALL_DIR}
# list.txt contains: graph_name n_vertices n_edges max_vertex_d
# if list.txt exits remove it

if [ -z "${SRC_PATH}" ]
then
   echo "SRC_PATH is not defined: "${SRC_PATH}
   exit 0
else 
# TO DO general dataset name via BASH VARIABLE
   SRC_PATH=${SRC_PATH}/${DATASET_FILE_NAME}
fi

echo ${SRC_PATH}
cp ${SRC_PATH} .


#if [ ! -d com-orkut.ungraph.txt ]; then
echo "Unzipping ..."
tar --strip-components=1 -zxf ${DATASET_FILE_NAME}  
#fi



