#!/usr/bin/env bash

set -e
docker build --no-cache .

echo "docker build done!"