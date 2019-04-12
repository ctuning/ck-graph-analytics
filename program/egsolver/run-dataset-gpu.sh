
#customize the following variable with your installation ck show env --tags=egsolver,dataset
clique=40f0935c071dd587
equiv=774fb09c68a5dcb8
ladder=5a0b49a3966e9a17
model=456081592a04c4a9

# --deps.dataset-egsolver
dataset=$clique
echo "Clique" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=2 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=4 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=8 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=16 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=32 --deps.dataset-egsolver=$dataset


dataset=$equiv
echo "Equivalent" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=2 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=4 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=8 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=16 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=32 --deps.dataset-egsolver=$dataset



dataset=$ladder
echo "Ladder" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=2 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=4 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=8 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=16 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=32 --deps.dataset-egsolver=$dataset



dataset=$model
echo "Model" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=2 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=4 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=8 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=16 --deps.dataset-egsolver=$dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-shuffle-gpu --env.CK_EG_VERSION=32 --deps.dataset-egsolver=$dataset





