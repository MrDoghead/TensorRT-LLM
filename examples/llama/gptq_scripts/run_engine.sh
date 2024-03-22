#!/bin/bash

# With fp16 inference
python3 ../run.py --max_output_len=100 \
                  --tokenizer_dir /data/models/Llama-2-7b-hf \
                  --engine_dir /data/models/tllm/llama/7B/trt_engines/int4_GPTQ/1-gpu/
