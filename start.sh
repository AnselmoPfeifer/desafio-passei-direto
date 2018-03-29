#!/usr/bin/env bash
set -x

echo "Starting Mysql-Server"
(cd mysql; ./init.sh)

echo "Starting Application"
(cd app; ./init.sh)

echo "Starting Proxy"
(cd nginx; ./init.sh)
