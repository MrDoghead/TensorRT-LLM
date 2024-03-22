#!/bin/bash

# Quantize HF LLaMA 7B checkpoint into INT4 AWQ format
python ../quantization/quantize.py --model_dir /data/models/Llama-2-7b-hf \
                                   --dtype float16 \
                                   --qformat int4_awq \
                                   --awq_block_size 128 \
                                   --output_dir /data/models/tllm/quantized_int4-awq \
                                   --calib_size 32
