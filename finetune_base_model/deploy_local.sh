#!/bin/bash

set -ex

checkpoint_path_name="v0-20240823-155353"

merge_checkpoint_path="`pwd`/output/qwen2-7b-instruct/${checkpoint_path_name}/checkpoint-92-merged/"

swift deploy --ckpt_dir $merge_checkpoint_path --host 0.0.0.0
