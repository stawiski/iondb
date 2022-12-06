FROM ubuntu:20.04

WORKDIR /app

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends git make curl tar libc-dev cmake python3 python-is-python3 build-essential libssl-dev

ENTRYPOINT ["/bin/bash"]