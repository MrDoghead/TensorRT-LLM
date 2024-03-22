#!/bin/bash

trtllm-build --checkpoint_dir /data/models/tllm/quantized_int4-awq \
            --output_dir /data/models/tllm/llama/7B/trt_engines/int4_AWQ/1-gpu/ \
            --gemm_plugin float16
