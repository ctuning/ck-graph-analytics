# ck-cluster18
Collective Knowledge workflow for CLUSTER competition at SuperComputing'18

[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-powered-by-ck.png)](https://github.com/ctuning/ck)
[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-validated-by-the-community-simple.png)](http://cTuning.org)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

# Installation

```
# pip install ck
$ ck pull repo --url=https://github.com/dividiti/ck-cluster
```
## Intel MPI Library
Install Intel MPI lib following the instruction (here)[https://software.seek.intel.com/performance-libraries]
or via (**apt**)[https://software.intel.com/en-us/articles/installing-intel-free-libs-and-python-apt-repo]

```
1. wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
2. apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
3. sudo wget https://apt.repos.intel.com/setup/intelproducts.list -O /etc/apt/sources.list.d/intelproducts.list
4. sudo sh -c 'echo deb https://apt.repos.intel.com/mpi all main > /etc/apt/sources.list.d/intel-mpi.list'
5. sudo apt-get update
6. sudo apt-get install intel-mpi
```
Detect Intel MPI Library i.e,

```
ck detect soft:lib.mpiicc --full_path=/opt/intel/compilers_and_libraries/linux/mpi/intel64/bin/mpivars.sh
```

## Install SeisSol

```
ck install package:lib-seissol
```

# Questions and comments

Feel free to send your questions and comments to the [CK mailing list](http://groups.google.com/group/collective-knowledge)
or join our [LinkedIn group on reproducible R&D](https://www.linkedin.com/groups?home=&gid=7433414&trk=my_groups-tile-grp).
