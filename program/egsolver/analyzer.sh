
echo "##########################################"
echo "Output PATH: "$CK_EG_DATASET_PATH_OUTPUT
echo "##########################################"


if [ -z "$CK_EG_DATASET_PATH_OUTPUT" ]
then
      echo "ERROR!!!! CK_EG_DATASET_PATH_OUTPUT is not defined"
      exit 0
fi 



for istanza in $CK_EG_DATASET_PATH_OUTPUT/*.sol ; do \
tem=`basename $istanza .txt`
sol=`basename $tem .txt`
echo ;
#echo "$tem --> $sol.sol" ;
mytime=`grep "Solving time:" $istanza | cut -d " " -f3`
usec=`grep "Nodes per second:" $istanza | cut -d " " -f4`
avgdeg=`grep "Avg out-degree" $istanza | cut -d " " -f3`


if [ -z "$mytime" ]
then
    mytime=0
fi
if [ -z "$mytime" ]
then
    usec=0
fi
if [ -z "$mytime" ]
then
    avgdeg=0
fi
echo $tem $avgdeg $mytime $usec
echo $tem $avgdeg $mytime $usec >> dataset-results.txt 2>&1 
echo "--------------------------";
done
mv dataset-results.txt ${CK_EG_DATASET_PATH_OUTPUT}


echo "==========================";
# copy configuration of the experiment
#echo "Dataset PATH: "$CK_EG_DATASET_PATH > $CK_EG_DATASET_PATH_OUTPUT/experiment.txt
echo "##########################################"


