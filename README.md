# Development ethereum node for testing

This is a development Ethereum test node for testing distributed applications.

## Requirements

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

 - `8545` - JSON RPC HTTP service
 - `8546` - JSON RPC Websocket service

## Accounts with balance

If you require accounts with balance, there are some of them defined in the genesis file, here is the full list:

| Account address                              | Balance       | Private Key                                                        |
| -------------------------------------------- | ------------- | ------------------------------------------------------------------ |
| `0x01a596Da8aEfA5d6caf233F1Bdaab2Da963B5830` | 100000000 ETH | `3de106f01f3fa595f215f50a0daf2ddd1bd061663b69396783a70dcee9f1f755` |
| `0x64eBC0159b5FDCEe8EE623DCc7bF8D296F17826B` | 100000000 ETH | `b6cc360b19ce026fd49052de6fb683b5e10f9a1713320848c1ed9ab2e25ed11d` |
| `0xA953F261F8277C6c54951e1E2f04360dEA066fa1` | 100000000 ETH | `8acfcb9c3df4cdadf8837c515e925e5110cf9097474489ad253c358e69abe672` |
| `0xa87B7E7E2274A611E3d63AB2d690b6a772036E48` | 100000000 ETH | `1a774dd0f467418e0ebfceb3187b9073642b9a2610be2116b636e244168b5514` |

Since the min gas price is set to 0, you can make smart contract transactions at 0 cost if you specify the gas price to 0 in the transaction parameters.

## Reset 

If you want to change the genesis file, type the following (this will reset the blockchain):

```
docker-compose down -v
```

and:

```
docker-compose up --build
```
