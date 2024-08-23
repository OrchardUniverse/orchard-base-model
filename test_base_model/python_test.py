#!/usr/bin/env python

import os
from openai import OpenAI
import openai

api_key = "foo"
base_url = "http://tobe3090:8000/v1/"
model = "qwen2-7b-instruct"

client = OpenAI(api_key=api_key, base_url=base_url)

response = client.chat.completions.create(
    model=model,
    messages=[
        {"role": "system", "content": "You are a helpful assistant"},
        {"role": "user", "content": "Hello, who are you?"},
    ],
    stream=False
)

print(response.choices[0].message.content)
