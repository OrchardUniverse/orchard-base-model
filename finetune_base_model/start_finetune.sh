#!/bin/bash

set -ex

CUDA_VISIBLE_DEVICES=0 \
swift sft \
    --model_type qwen2-7b-instruct \
    --dataset alpaca-zh#500 alpaca-en#500 self-cognition#500 \
    --logging_steps 5 \
    --max_length 512 \
    --learning_rate 1e-4 \
    --output_dir output \
    --lora_target_modules ALL \
    --model_name 果树基座模型 'Orchard Universe Base Model' \
    --model_author 果农 'Orchardist' \
