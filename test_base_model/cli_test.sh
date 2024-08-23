#!/bin/bash

set -ex

HOST=172.20.10.11

curl http://${HOST}:8000/v1/chat/completions \
-H "Content-Type: application/json" \
-d '{"model": "qwen2-7b-instruct", "messages": [{"role": "user", "content": "Who are you?"}], "max_tokens": 256, "temperature": 0}'

curl http://${HOST}:8000/v1/chat/completions \
-H "Content-Type: application/json" \
-d '{"model": "qwen2-7b-instruct", "messages": [{"role": "user", "content": "你是谁"}], "max_tokens": 256, "temperature": 0}'
