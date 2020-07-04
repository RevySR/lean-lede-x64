#!/usr/bin/env bash
dir=`pwd`
docker run --network="host" --rm \
    --name lede_build \
    -v $dir/lede:/home/builder/lede \
    -it lean_lede_build_env /bin/bash
