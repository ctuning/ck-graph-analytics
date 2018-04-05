#!/bin/bash

cd ${INSTALL_DIR}
echo "Download "
# list.txt contains: graph_name n_vertices n_edges max_vertex_d
# if list.txt exits remove it
if [ "${EGO_FACEBOOK}" = "1" ]; then 
   if [ ! -e facebook_combined.txt.gz ]; then
  	echo "Downloading ..."
 	wget http://snap.stanford.edu/data/facebook_combined.txt.gz
   fi

   if [ ! -d facebook_combined.txt ]; then
  	echo "Unzipping ..."
        gunzip facebook_combined.txt.gz
   fi
   
   echo "facebook_combined.txt 4039 88234 4039" >> list.txt
fi

if [ "${COM_YOUTUBE}" = "1" ]; then 
   if [ ! -e facebook_combined.txt.gz ]; then
  	echo "Downloading ..."
 	wget http://snap.stanford.edu/data/bigdata/communities/com-youtube.ungraph.txt.gz
   fi

   if [ ! -d com-youtube.ungraph.txt.gz ]; then
  	echo "Unzipping ..."
        gunzip com-youtube.ungraph.txt.gz
   fi
   
   echo "com youtube" >> list.txt
fi
#echo "Aggregating training text ..."
#cat 1-billion-word-language-modeling-benchmark-r13output/heldout-monolingual.tokenized.shuffled/news.en-00000-of-00100 > 1b
#cat 1-billion-word-language-modeling-benchmark-r13output/training-monolingual.tokenized.shuffled/* >> 1b

#echo "clean up ..."
#rm -rf 1-billion-word-language-modeling-benchmark-r13output
