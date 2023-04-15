# registry.cn-hongkong.aliyuncs.com/chenyaofo/numpy:test
FROM python:3.10.10-slim-bullseye

RUN PIP_INSTALL="pip install --upgrade --no-cache-dir" && \
    $PIP_INSTALL numpy