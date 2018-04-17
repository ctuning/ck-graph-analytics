#
# Convert raw output of the Caffe 'time' command
# to the CK timing format.
#
# Developers:
#   - Grigori Fursin, cTuning foundation / dividiti, 2016
#   - Anton Lokhmotov, dividiti, 2016-2017
#

import json
import os
import re
import sys

import sys
import os.path
from os import listdir
from os.path import isfile, join

import glob
import argparse

### copy linux directory 
import shutil, errno

def remove(dst):
    for f in os.listdir(dst):
        fp = os.path.join(dst, f)
        if os.path.isfile(fp):
#             print(fp)
		os.unlink(fp)
def copy(src, dst):
#    print(src,dst)
    files = [f for f in listdir(src) if isfile(join(src, f))]

    for f in files:
        fp = os.path.join(src,f)
#        print fp
        shutil.copy2(fp, dst)
#    shutil.copy(kernelname, dst)

def rename(dst, new_name, startwith_string):
    for f in os.listdir(dst):
        fp = os.path.join(dst, f)
        if os.path.isfile(fp) and f.startswith(startwith_string):
		os.rename(fp, os.path.join(dst,new_name))


def ck_preprocess(i):
    ck=i['ck_kernel']
    del i['ck_kernel']
    rt=i['run_time']
    deps=i['deps']
    env=i.get('env',{})
    pass_to_make = i
    pli = i['misc']
    rr={}
  
    
    # dst_dir must be program/xxxx/tmp
    dst_dir=os.getcwd() 
    remove(dst_dir)
    # First get all the file of the dataset. The copy the bin directory files !!!
    # get the binary and copy in dst_dir
    src_bin=deps['lib-seissol']['cus']['path_bin']
    src_dataset=i['dataset_path']

    
    copy(src_dataset,dst_dir)
    copy(src_bin,dst_dir)

#    with open('data.txt', 'w') as outfile:
#        json.dump(i['dataset_path'], outfile, indent=4)
    # path new absolute name. Replace all the file that start with SeisSol_
    rename(dst_dir, "SeisSol", "SeisSol_")


    rr['return']=0
    #### NO ADD STUFF BELOW    
    return rr

# Do not add anything here!
