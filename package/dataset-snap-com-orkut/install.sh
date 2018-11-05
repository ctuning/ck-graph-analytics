#!/bin/bash

cd ${INSTALL_DIR}
echo "Download "
# list.txt contains: graph_name n_vertices n_edges max_vertex_d
# if list.txt exits remove it
if [ ! -e com-orkut.ungraph.txt.gz ]; then
echo "Downloading ..."
wget http://snap.stanford.edu/data/bigdata/communities/com-orkut.ungraph.txt.gz
fi

if [ ! -d com-orkut.ungraph.txt ]; then
echo "Unzipping ..."
gunzip com-orkut.ungraph.txt.gz
fi



