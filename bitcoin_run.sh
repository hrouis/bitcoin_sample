 nohup docker run --rm  bitcoin-alice-node &
 nohup docker run --rm  bitcoin-bob-node &
 nohup docker run --rm  -p 3002:3002 -e BTCEXP_HOST=0.0.0.0 bitcoin-explorer &