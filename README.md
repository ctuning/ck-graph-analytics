Collective Knowledge workflow for the graph applications such as AxBC:

[![compatibility](https://github.com/ctuning/ck-guide-images/blob/master/ck-compatible.svg)](https://github.com/ctuning/ck)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

# CK Installation

The minimal installation requires:

* Python 2.7 or 3.3+ (limitation is mainly due to unitests)
* Git command line client.

You can install CK in your local user space as follows:

```
$ git clone http://github.com/ctuning/ck
$ export PATH=$PWD/ck/bin:$PATH
$ export PYTHONPATH=$PWD/ck:$PYTHONPATH
```

You can also install CK via PIP with sudo to avoid setting up environment variables yourself:

```
$ sudo pip install ck
```

# CK workflow installation with application dependencies

```
$ ck pull repo:ck-graph-analytics
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
7. ck detect soft --tags=lib,mpi,intel

Note that if this library is installed in an unusual path, you can help CK detect it as follows:
7. ck detect soft --tags=lib,mpi,intel --search_dirs=<<INSTALLATION_PATH>>
```
## Install AxBC

```
ck install package:lib-axbc
```

# Feedback

Get in touch with the CK community about this workflow and CK components [here](https://github.com/ctuning/ck/wiki/Contacts). 
