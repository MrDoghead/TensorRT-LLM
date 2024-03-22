#!/bin/bash

python convert_checkpoint.py --model_dir /data/models/Llama-2-7b-hf \
                             --output_dir /data/models/tllm/tllm_checkpoint_1gpu_gptq \
                             --dtype float16 \
                             --ammo_quant_ckpt_path /data/models/tllm/llama-7b-gptq-4bit-gs128.safetensors   \
                             --use_weight_only \
                             --weight_only_precision int4_gptq \
                             --per_group \
