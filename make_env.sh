#!/usr/bin/env bash
set -e
docker build . -f Dockerfile_local --network="host" -t lean_lede_build_env
echo "Lean's LEDE Build env Done!"
if [ ! -d "lede" ] 
then
    git clone https://github.com/coolsnowwolf/lede.git
    echo "LEDE Source Download Done!"
    cp config/.config lede/
    echo "Copy Old Config Done!"
fi
echo "Make env is Done!"
