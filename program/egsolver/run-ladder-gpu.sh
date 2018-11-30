DATASETPATH=/home/academic/fvella/egsolver-dataset/clique-dataset

ck run program:egsolver --env.CK_EG_DATASET_PATH=${DATASETPATH} --cmd_key=run-egsolver-experiment-gpu
ck run program:egsolver --env.CK_EG_DATASET_PATH=${DATASETPATH} --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_2tpv
ck run program:egsolver --env.CK_EG_DATASET_PATH=${DATASETPATH} --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_4tpv
ck run program:egsolver --env.CK_EG_DATASET_PATH=${DATASETPATH} --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_8tpv
ck run program:egsolver --env.CK_EG_DATASET_PATH=${DATASETPATH} --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_16tpv
ck run program:egsolver --env.CK_EG_DATASET_PATH=${DATASETPATH} --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_32tpv


