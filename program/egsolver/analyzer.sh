
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
mytime=`grep "Solving time:" $istanza | cut -d " " -f14`  
echo $tem $mytime
echo $tem $mytime >> exp.data 2>&1 
mv exp.data ${CK_EG_DATASET_PATH_OUTPUT}
echo "--------------------------";
sleep 5 ;
done


echo "==========================";
# copy configuration of the experiment
#echo "Dataset PATH: "$CK_EG_DATASET_PATH > $CK_EG_DATASET_PATH_OUTPUT/experiment.txt
echo "##########################################"


