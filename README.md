# Full Web3 Mint Website 

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```

## install
- `npm i -D hardhat`
    - `npx hardhat` (4 enters)
- `npm i @openzeppelin/contracts`
- `npm i @chakra-ui/react @emotion/react @emotion/styled framer-motion`
- `npm i -D dotenv`
- `npm i @nomicfoundation/hardhat-toolbox`
- `npm i -D @nomiclabs/hardhat-etherscan`

## HARDHAT
- init project
    - `npx hardhat`
- deploy contract
    - `npx hardhat clean`
    - `npx hardhat compile`
    - `npx hardhat run scripts/deployLeonPunksNFT.js --network mumbai`
    - LeonPunksNFT with 1 ETH and unlock timestamp 1699018994 deployed to 0x291856b2Bb214784AcFd7658eD995cca863E30f8
    - https://mumbai.polygonscan.com/address/0x291856b2Bb214784AcFd7658eD995cca863E30f8
- verify contract
    - `npx hardhat verify --network mumbai 0x291856b2Bb214784AcFd7658eD995cca863E30f8`


## Dependencies
- create-react-app: https://create-react-app.dev/ 
- hardhat: https://hardhat.org/ 
- infura: https://infura.io/ 
- etherscan: https://etherscan.io/ 
- node: https://nodejs.org/en/download/
- chakra ui: https://chakra-ui.com/getting-started
- dotenv

## commits
- Install and setup dependencies: React, Ethers, Hardhat, and Web3
- Clean React base installation
- Solidity: Write a NFT Mint Smart Contract
- Deploy Smart Contract to Test Network
- Create the FrontEnd
- Upgrade style
- Fully Built a Frontend Mint Website

## ? Features

- NFT Smart Contract
- Connect wallet
- Mint NFT
- Social Media tags