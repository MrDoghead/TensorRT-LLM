#!/bin/bash

trtllm-build --checkpoint_dir /data/models/tllm/tllm_checkpoint_1gpu_gptq \
            --output_dir /data/models/tllm/llama/7B/trt_engines/int4_GPTQ/1-gpu/ \
            --gemm_plugin float16
