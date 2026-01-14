#!/bin/bash

# Ensure that we're at the root directory
SCRIPT_DIR="$(dirname "$0")"
cd $SCRIPT_DIR/../

# Keep this in sync with Docker volumes
mkdir -p ./data/oc
mkdir -p ./data/oc/config
mkdir -p ./data/oc/data
sudo chown -R 1000:1000 ./data/oc
mkdir -p ./data/nc
mkdir -p ./data/nc-mariadb
mkdir -p ./data/nd/cache
mkdir -p ./data/nd/config
mkdir -p ./data/nd/lib
mkdir -p ./data/ts
mkdir -p ./data/gitea
sudo chown -R 1000:1000 data/gitea 
mkdir -p ./data/gitea-pg
mkdir -p ./data/mk
mkdir -p ./data/mk-pg
mkdir -p ./data/mk-redis
mkdir -p ./data/ollama
