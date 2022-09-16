
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN    apt-get update -y \
    && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
               build-essential git pandoc texlive texlive-fonts-extra \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
