#!/bin/bash

SPLIT="mmbench_dev_20230712"
CKPT_NAME="Video-LLaVA-7B"
CKPT="checkpoints/${CKPT_NAME}"
EVAL="eval"

python3 scripts/get_mmbench_accuracy.py \
    --file_name ${EVAL}/mmbench/answers_upload/$SPLIT/Video-LLaVA-7B.xlsx
