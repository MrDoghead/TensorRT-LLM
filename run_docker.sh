#!/bin/bash
docker run -it \
           --name trt_dc \
           -p 8135:22 \
           --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --gpus=all \
           --volume ${PWD}:/code/tensorrt_llm \
           --volume /data/data_dcao/:/data/ \
           --workdir /code/tensorrt_llm \
           tensorrt_llm/devel:latest /bin/bash
