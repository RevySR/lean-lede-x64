#!/usr/bin/env bash
set -e
docker build . --network="host" -t lean_lede_build_env
echo "Lean's LEDE Build env Done!"
git clone https://github.com/coolsnowwolf/lede.git
echo "LEDE Source Download Done!"
cp config/.config lede/
echo "Config Done!"