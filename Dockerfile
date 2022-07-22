FROM ethereum/client-go:alltools-latest

RUN mkdir /eth

RUN mkdir /eth/data

COPY keystore /root/.ethereum/keystore
COPY genesis.json .
COPY password.txt .

RUN geth init genesis.json

# geth
EXPOSE 8545
EXPOSE 30303
