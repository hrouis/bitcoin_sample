# bitcoin_sample

Lancer le noeud Alice:
docker run --rm  bitcoin-alice-node

Lancer le noeud Bob:
docker run --rm  bitcoin-bob-node

Configurer l'explorateur de noeud pour se connecter à l'API d'Alice

Lancer l'explorateur de noeud:
docker run --rm  -p 3002:3002 -e BTCEXP_HOST=0.0.0.0 bitcoin-explorer &


http://localhost:3002


bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password getwalletinfo

Connexion entre bob et Alice
bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password addnode 172.17.0.3 add
bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password addnode 172.17.0.2 add


Générer une adresse pour Alice:
bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password getnewaddress "Alice"

Générer une adresse pour bob
bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password getnewaddress "bob"

Générer 50 blocs pour alice:
bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password generatetoaddress 50 2N5jXENX3Dz9LSoLYQ6AnxV9UHk9NL3JHC9

Payer Bob:
bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password sendtoaddress "2MyQjbVonDXQW3qyPfbWzaBq5MZrRp7J6vA" 30.0
Consulter la transaction dans le memory pool (pourquoi?)

Générer 6 blocs pour bob:
bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password generate 6
