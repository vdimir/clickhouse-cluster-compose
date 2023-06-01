#!/bin/bash

mkdir -p /var/lib/clickhouse/

echo runnning ${APP_TYPE:-server} ${CHREPLICA:-}

/clickhouse ${APP_TYPE:-server} --config-file=/etc/clickhouse-config.xml
