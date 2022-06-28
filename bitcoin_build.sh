#!/bin/sh
cd docker 

docker build -f Dockerfile_bitcoin_install -t bitcoin-install .
docker build -f Dockerfile_bitcoin_alice -t bitcoin-alice-node .
docker build -f Dockerfile_bitcoin_bob -t bitcoin-bob-node .
docker build -f Dockerfile_bitcoin_charles -t bitcoin-charles-node .
docker build -f Dockerfile_btc_rpc -t bitcoin-explorer .