// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract LeonPunksNFT is ERC721, Ownable {
    // minimize the variable creation, each increase contract cost
    uint256 public mintPrice;
    // current number minted
    uint256 public totalSupply;
    // max nft in this collection
    uint256 public maxSupply;
    // max number per wallet, to increase the floor
    uint256 public maxPerWallet;
    // flag
    bool public isPublicMintEnabled;
    // CRITICAL: open sea determine where the image is located
    string internal baseTokenUri;
    // withdraw the money used by the contract
    address payable public withdrawWallet;
    // keep track all the mints in each wallet
    mapping(address => uint256) public walletMints;

    event Withdrawal(uint256 amount, uint256 when);

    constructor() payable ERC721("LeonPunks", "LP") {
        mintPrice = 0.02 ether;
        totalSupply = 0;
        maxSupply = 1000;
        maxPerWallet = 3;
    }

    function setIsPublicMintEnabled(bool isPublicMintEnabled_)
        external
        onlyOwner
    {
        // enable or disable the minting process
        isPublicMintEnabled = isPublicMintEnabled_;
    }

    function setBaseTokenUri(string calldata baseTokenUri_) external onlyOwner {
        // set baseTokenURI
        baseTokenUri = baseTokenUri_;
    }

    function tokenURI(uint256 tokenId_)
        public
        view
        override
        returns (string memory)
    {
        // set correct tokenURI
        require(_exists(tokenId_), "Token does not exists");
        return
            string(
                abi.encodePacked(
                    baseTokenUri,
                    Strings.toString(tokenId_),
                    ".json"
                )
            );
    }

    function withdraw() external onlyOwner {
        // Uncomment this line, and the import of "hardhat/console.sol", to print a log in your terminal
        // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

        // grab founds from the withdraw wallet
        (bool success, ) = withdrawWallet.call{value: address(this).balance}(
            ""
        );
        require(success, "withdraw failed");
    }

    function mint(uint256 quantity_) public payable {
        require(isPublicMintEnabled, "minting not enabled");
        // user input the correct value to pay mint process
        require(msg.value == quantity_ * mintPrice, "wrong mint value");
        // this mint is possible if we does not overcame the maxSupply
        require(totalSupply + quantity_ <= maxSupply, "sold out");
        // this mint is possible if msg.sender does not minted maxPerWallet
        require(
            walletMints[msg.sender] + quantity_ <= maxPerWallet,
            "exceed max wallet"
        );

        // perform the MINT
        for (uint256 i = 0; i < quantity_; i++) {
            // foreach quantity_
            // set tokenId
            uint256 newTokenId = totalSupply+1;
            // before the mint upgrade total supply - prevent reentrancy attack
            totalSupply++;
            // who receive and the tokenId
           _safeMint(msg.sender, newTokenId); 
        }
    }
}
