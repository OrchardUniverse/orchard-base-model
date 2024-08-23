#!/bin/bash

set -ex

checkpoint_path_name='v0-20240823-155353'

CUDA_VISIBLE_DEVICES=0 swift export --ckpt_dir "output/qwen2-7b-instruct/${checkpoint_path_name}/checkpoint-92" --merge_lora true

# CUDA_VISIBLE_DEVICES=0 swift infer --ckpt_dir "output/qwen2-7b-instruct/${checkpoint_path_name}/checkpoint-92-merged"

