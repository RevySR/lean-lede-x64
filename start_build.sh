#!/usr/bin/env bash
docker run --network="host" --rm \
    --name lede_build \
    -v /Volumes/lede_build/lede:/home/builder/lede \
    -it lean_lede_build_env /bin/bash
