#!/usr/bin/env python

import os
from openai import OpenAI
import openai

host="172.20.10.11"
api_key = "test"
base_url = f"http://{host}:8000/v1/"
model = "qwen2-7b-instruct"

client = OpenAI(api_key=api_key, base_url=base_url)

response = client.chat.completions.create(
    model=model,
    messages=[
        #{"role": "user", "content": "Hello, who are you?"},
        {"role": "user", "content": "你是谁"},
    ],
    stream=False
)

print(response.choices[0].message.content)
