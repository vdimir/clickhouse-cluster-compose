Run clickhouse cluster in docker compose

1. Copy `clickhuse` binary to root of this repo

1. Run cluster

```bash
cd chcluster
docker compose -f ./docker-compose.yml up --build -d
```

1. Other commands

```bash

# build image
docker build -t chcluster .

# run server manually
docker run --rm -it --network=chcluster_default --volume $HOME/clickhouse:/clickhouse -v $PWD/config_server.xml:/etc/clickhouse/config.xml chcluster

# Ports 9001 9002 9003 exposed to host, so you can run client from host
clickhouse client -mn --port 9001

# or run client if ports not exposed
docker run --rm -it --network=chcluster_default --volume $HOME/clickhouse:/clickhouse --entrypoint=/clickhouse chcluster client --host=chcluster-srv1-1

```
