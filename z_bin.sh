BPE_DIR=/Users/yuelyu/PycharmProjects/guided_summarization-master/bart/small_bpe_output_data
BIN_DIR=/Users/yuelyu/PycharmProjects/guided_summarization-master/bart/small_bin_output_data
python fairseq_cli/guided_preprocess.py \
  --source-lang "source" \
  --target-lang "target" \
  --trainpref $BPE_DIR"/train.bpe" \
  --validpref $BPE_DIR"/val.bpe" \
  --destdir $BIN_DIR \
  --workers 60 \
  --srcdict dict.txt \
  --tgtdict dict.txt;
