FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN    apt-get update -y \
    && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
               build-essential git pandoc texlive texlive-latex-extra texlive-fonts-extra \
	       texlive-font-utils ca-certificates texlive-font-utils \
    && update-ca-certificates \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
