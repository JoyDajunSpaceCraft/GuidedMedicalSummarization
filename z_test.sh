SRC=$1
GUIDANCE=$2
RESULT_PATH=$3
MODEL_DIR=$4
MODEL_NAME=$5
DATA_BIN=$6
python z_test.py $SRC $GUIDANCE $RESULT_PATH $MODEL_DIR $MODEL_NAME $DATA_BIN

#
# sh z_test.sh /home/yuelv/gsum_bart/guided_summarization-master/evaluate/smallpred_mdm_2.src /home/yuelv/gsum_bart/guided_summarization-master/evaluate/medcat_pred_2.z /home/yuelv/gsum_bart/guided_summarization-master/evaluate/mdm_medcat_2.output bart.large /home/yuelv/gsum_bart/guided_summarization-master/bart/model/checkpoint_best.pt /home/yuelv/gsum_bart/guided_summarization-master/bart/bin_output_data
