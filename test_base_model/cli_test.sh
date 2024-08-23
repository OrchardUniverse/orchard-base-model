#!/bin/bash

set -ex

curl http://tobe3090:8000/v1/chat/completions \
-H "Content-Type: application/json" \
-d '{
  "model": "qwen2-7b-instruct", 
  "messages": [{"role": "user", "content": "Who are you?"}], "max_tokens": 256, "temperature": 0 
}'
