#!/bin/bash

cd ${INSTALL_DIR}
echo "Download "
# list.txt contains: graph_name n_vertices n_edges max_vertex_d
# if list.txt exits remove it
if [ ! -e facebook_combined.txt.gz ]; then
echo "Downloading ..."
wget http://snap.stanford.edu/data/facebook_combined.txt.gz
fi

if [ ! -d facebook_combined.txt ]; then
echo "Unzipping ..."
gunzip facebook_combined.txt.gz
fi

echo "facebook_combined.txt 4039 88234 4039" 


