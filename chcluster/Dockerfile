FROM ubuntu:22.04

RUN apt update && apt install -y \
    inetutils-ping \
    curl \
    git \
    gnupg \
    lsb-release \
    python3 \
    software-properties-common \
    wget \
    vim \
    telnet netcat net-tools \
    && rm -rf /var/lib/apt/lists/*

ENV APP_TYPE=server

EXPOSE 9000 8123

COPY  ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
