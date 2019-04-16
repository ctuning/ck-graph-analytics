
#customize the following variable with your installation ck show env --tags=egsolver,dataset
clique=40f0935c071dd587
equiv=774fb09c68a5dcb8
ladder=5a0b49a3966e9a17
model=456081592a04c4a9

# --deps.dataset-egsolver
dataset=$clique
echo "Clique" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=5
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=10
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=15
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=20

dataset=$equiv
echo "Equivalent" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=5
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=10
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=15
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=20



dataset=$ladder
echo "Ladder" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=5
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=10
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=15
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=20

dataset=$model
echo "Model" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=5
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=10
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=15
ck run program:egsolver  --cmd_key=run-egsolver-experiment-bucket-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=20





