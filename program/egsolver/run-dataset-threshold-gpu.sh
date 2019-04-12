
#customize the following variable with your installation ck show env --tags=egsolver,dataset
clique=40f0935c071dd587
equiv=774fb09c68a5dcb8
ladder=5a0b49a3966e9a17
model=456081592a04c4a9

# --deps.dataset-egsolver
dataset=$clique
echo "Clique" $dataset
ck run program:egsolver  --cmd_key=run-egsolver-experiment-threshold-gpu  --deps.dataset-egsolver=$dataset --env.CK_EG_THRESHOLD=5

dataset=$equiv
echo "Equivalent" $dataset


dataset=$ladder
echo "Ladder" $dataset


dataset=$model
echo "Model" $dataset




