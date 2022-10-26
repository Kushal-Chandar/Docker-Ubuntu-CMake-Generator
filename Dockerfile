
FROM ubuntu:latest

ARG CMAKE_VERSION
ARG JOBS

RUN apt update && apt install -y \
    --no-install-recommends \
    gcc \
    g++ \
    make \
    libssl-dev \
    jq \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /cmake

COPY ./get_cmake.sh .
RUN ./get_cmake.sh $CMAKE_VERSION $JOBS

RUN apt purge gcc g++ make libssl-dev jq curl ca-certificates -y \
    && rm -rf /cmake

