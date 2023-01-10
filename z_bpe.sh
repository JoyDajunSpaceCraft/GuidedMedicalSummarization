#INPUT=/Users/yuelyu/Downloads/cnn_dm/val.oracle
INPUT=/Users/yuelyu/PycharmProjects/guided_summarization-master/bart_input_example/val.target
OUTPUT=/Users/yuelyu/PycharmProjects/guided_summarization-master/bart/small_bpe_output_data/val.bpe.target
wget -N 'https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/encoder.json'
wget -N 'https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/vocab.bpe'
wget -N 'https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/dict.txt'
python -m examples.roberta.multiprocessing_bpe_encoder \
--encoder-json encoder.json \
--vocab-bpe vocab.bpe \
--inputs "$INPUT" \
--outputs "$OUTPUT" \
--workers 60 \
--keep-empty;
