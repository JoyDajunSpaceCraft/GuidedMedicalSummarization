import torch
from fairseq.models.bart import GuidedBARTModel

import sys
bart = GuidedBARTModel.from_pretrained(
    sys.argv[4],
    checkpoint_file=sys.argv[5],
    data_name_or_path=sys.argv[6]
)

bart.cuda()
bart.eval()
bart.half()
count = 1
bsz = 16
sline = "her inr was found to be significantly supratherapeutic. she is given 2.5 mg of vitamin k (initially ordered by mouth but was administered iv). because of pain control, need to trend hemoglobin given the possibility of significant bleeding into the right leg, she is placed in observation to internal medicine."
zline = "vitamin k"

with open("/content/gdrive/MyDrive/LITE/gsum/bart/predict/small_pred.output", 'w') as fout:
    slines = [sline]
    zlines = [zline]
    hypotheses_batch = bart.sample(slines, zlines, beam=4, lenpen=2.0, max_len_b=140, min_len=55, no_repeat_ngram_size=3, guided=True)
    for hypothesis in hypotheses_batch:
        fout.write(hypothesis + '\n')
        fout.flush()
