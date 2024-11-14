#!/bin/bash

# Ensure that we're at the root directory
SCRIPT_DIR="$(dirname "$0")"
cd $SCRIPT_DIR/../

docker run --rm \
  -v ./data/nc:/backup/nc:ro \
  -v ./data/nc-mariadb:/backup/nc-mariadb:ro \
  -v ./data/gitea:/backup/gitea:ro \
  -v ./data/gitea-pg:/backup/gitea-pg:ro \
  -v ./data/mk:/backup/mk:ro \
  -v ./data/mk-pg:/backup/mk-pg:ro \
  --env-file ./config/backup/env \
  --entrypoint backup \
  offen/docker-volume-backup:v2.43.0 \
  backup --foreground
