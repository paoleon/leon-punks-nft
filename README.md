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

# enable contract
before you can use this application, you need to:
- go to your Polyscan website 
    - "https://mumbai.polygonscan.com/address/0x291856b2Bb214784AcFd7658eD995cca863E30f8#writeContract"
- open contract
- bind with the onwer wallet
- set "isPublicMintEnabled" to true 
    - follow https://mumbai.polygonscan.com/tx/0x71f428cb11833b608add2ad431d55063691130d609a34a816038a310a45156ef

# mint result
```json
{
    "hash": "0x98ec85e00515512cf78e8ea3e62e3b9ded03e30d943e243fc2de91d8cc7f8945",
    "type": 2,
    "accessList": null,
    "blockHash": null,
    "blockNumber": null,
    "transactionIndex": null,
    "confirmations": 0,
    "from": "0x18E0Aa30cdfA361e3bF3F425bdeF6375Cdb87E4A",
    "gasPrice": {
        "type": "BigNumber",
        "hex": "0x59682f09"
    },
    "maxPriorityFeePerGas": {
        "type": "BigNumber",
        "hex": "0x59682f00"
    },
    "maxFeePerGas": {
        "type": "BigNumber",
        "hex": "0x59682f09"
    },
    "gasLimit": {
        "type": "BigNumber",
        "hex": "0x01937c"
    },
    "to": "0x291856b2Bb214784AcFd7658eD995cca863E30f8",
    "value": {
        "type": "BigNumber",
        "hex": "0x470de4df820000"
    },
    "nonce": 0,
    "data": "0xa0712d680000000000000000000000000000000000000000000000000000000000000001",
    "r": "0xae5ae82c796ebe14c2ee42f0201fdb8345e78883a8e5dbccea376bff4390d4c3",
    "s": "0x14d442fd71453b72287ec9a6f20893adb3656a34cd45509ceadfc2f5b162d6f5",
    "v": 1,
    "creates": null,
    "chainId": 0
}

```