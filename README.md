# bitcoin_sample

* Lancer le noeud Alice:
> docker run --rm  bitcoin-alice-node

* Lancer le noeud Bob:
> docker run --rm  bitcoin-bob-node

* Lancer le noeud Charles:
> docker run --rm  bitcoin-charles-node

* Configurer l'explorateur de noeud pour se connecter à l'API de Charles

* Lancer l'explorateur de noeud:
> docker run --rm  -p 3002:3002 -e BTCEXP_HOST=0.0.0.0 bitcoin-explorer

> http://localhost:3002

* Informations sur le protefeuille
> bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password getwalletinfo

* Connexion entre bob et Alice
> bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password addnode <em>[bob IP]</em> add
>
> bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password addnode <em>[alice IP]</em> add

* Connexion entre Alice et Charles
> bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password addnode <em>[charles IP]</em> add
>
> bitcoin-cli -regtest --rpcuser=charles --rpcpassword=password addnode <em>[alice IP]</em> add

* Connexion entre Bob et Charles
> bitcoin-cli -regtest --rpcuser=charles --rpcpassword=password addnode <em>[bob IP]</em> add
>
> bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password addnode <em>[charles IP]</em> add


* Générer une adresse pour Alice:
> bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password getnewaddress "Alice"

* Générer une adresse pour bob
> bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password getnewaddress "bob"

Générer 50 blocs pour alice:
> bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password generatetoaddress 50 <em>[alice address]</em>

* Payer Bob:
> bitcoin-cli -regtest --rpcuser=alice --rpcpassword=password sendtoaddress <em>bob address</em> 30.0

* Consulter la transaction dans le memory pool (pourquoi?)

* Générer 6 blocs pour bob:
> bitcoin-cli -regtest --rpcuser=bob --rpcpassword=password generatetoaddress 6 <em>bob address</em>
