#!/bin/bash

set -ex

swift deploy --ckpt_dir /home/tobe/code/llm_examples/modelscope_exmaples/self_congition_finetune/output/qwen2-7b-instruct/v0-20240723-120442/checkpoint-92-merged/ --host 0.0.0.0
