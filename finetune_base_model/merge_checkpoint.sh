#!/bin/bash

set -ex

CUDA_VISIBLE_DEVICES=0 swift export --ckpt_dir 'output/qwen2-7b-instruct/v0-20240723-120442/checkpoint-92' --merge_lora true

CUDA_VISIBLE_DEVICES=0 swift infer --ckpt_dir 'output/qwen2-7b-instruct/v0-20240723-120442/checkpoint-92-merged'

