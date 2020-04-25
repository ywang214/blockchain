<b>Develop smart contract in solidity</b>

## Install Truffle and Ganache CLI
```sudo npm install -g ganache-cli truffle```

## Deploy a smart contract
- First, you need to create a simulated environment for running smart contracts on your local computer. Ganache CLI automatically creates 10 accounts associated with 10 private keys. Each account has 100 ethers for testing purpose.
```
ganache-cli
```
- Second, compile the smart contract created with the following command. This compiles the original code into Ethereum bytecode. If everything goes well, it will create .json file under build/contracts folder.
```
truffle compile
```
- Third, deploy the smart contract to Ganache. Generally, truffle deploys the contract to the first account provided by ganache. 
```
truffle migrate
```
- To interact with contract, go to truffle console and type below commands one by one to keep checking ganache console in another window.
```
truffle console
truffle(development)> var app
truffle(development)> HelloWorld.deployed().then(function(instance) {app=instance})
truffle(development)> app.creator.call()
truffle(development)> app.get()
```
