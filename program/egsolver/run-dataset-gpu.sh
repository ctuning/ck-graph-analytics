
#customize the following variable with your installation ck show env --tags=egsolver,dataset
clique=5444f84b7ce9626c
equiv=b09a2779242f3a2b
ladder=e4d876d194ec3bd0
model=9e6cd41c8f44203b

# --deps.dataset-egsolver
dataset=$clique
echo "Clique" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_2tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_4tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_8tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_16tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_32tpv --deps.dataset-egsolver=$dataset


dataset=$equiv
echo "Equivalent" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_2tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_4tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_8tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_16tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_32tpv --deps.dataset-egsolver=$dataset


dataset=$ladder
echo "Ladder" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_2tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_4tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_8tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_16tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_32tpv --deps.dataset-egsolver=$dataset




dataset=$model
echo "Model" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_2tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_4tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_8tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_16tpv --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-gpu --env.CK_EG_SOLVER=egsolver_shfl_full_32tpv --deps.dataset-egsolver=$dataset





