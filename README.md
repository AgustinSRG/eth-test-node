# Development ethereum node for testing

This is a development Ethereum test node for testing distributed applications.

## Requeriments

 - Docker
 - Docker Compose

## Configuration

In order to configure the blockchain, edit the `genesis.json` file.

Remember to change the `NETWORK_ID` in `.env` if you change `config.chainId` in `genesis.json`.


## Running the node

In order to start the node, use the following command:

```
docker-compose up --build
```

In order to stop them:

```
docker-compose down
```

## Ports

Exposed ports:

 - `8545` - Ethereum node. JSON RPC server for Web3.js

## Reset 

If you want to chenge the genesis file, type the following (this will reset the blockchain):

```
docker-compose down -v
```

and:

```
docker-compose up --build
```


