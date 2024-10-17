#!/bin/bash

# Ensure that we're at the root directory
SCRIPT_DIR="$(dirname "$0")"
cd $SCRIPT_DIR/../

# Keep this in sync with Docker volumes
mkdir -p ./data/nc
mkdir -p ./data/nc-mariadb
mkdir -p ./data/nd/cache
mkdir -p ./data/nd/config
mkdir -p ./data/nd/lib
mkdir -p ./data/ts