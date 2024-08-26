#!/bin/bash

set -ex

model_name="Orchard Universe Base Model"
model_name_chinese="果树基座模型"
author_name="果农"
author_name_chinese="Orchardist"

CUDA_VISIBLE_DEVICES=0 \
swift sft \
    --model_type qwen2-7b-instruct \
    --dataset alpaca-zh#500 alpaca-en#500 self-cognition#500 \
    --logging_steps 5 \
    --max_length 512 \
    --learning_rate 1e-4 \
    --output_dir output \
    --lora_target_modules ALL \
    --model_name $model_name_chinese $model_name \
    --model_author $author_name_chinese $author_name \
