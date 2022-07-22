// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

import "./base/NFTExtension.sol";
import "./base/SaleControl.sol";

contract ClimbingPriceExtension is NFTExtension, Ownable, SaleControl {
    uint256 public startPrice;
    uint256 public endPrice;
    uint256 public maxPerMint;
    uint256 public totalMinted;
    uint256 public maxSupply;

    constructor(
        address _nft,
        uint256 _startPrice,
        uint256 _endPrice,
        uint256 _maxPerMint,
        uint256 _maxSupply
    ) NFTExtension(_nft) {
        stopSale();
        // sale stopped by default

        startPrice = _startPrice;
        endPrice = _endPrice;
        maxPerMint = _maxPerMint;
        maxSupply = _maxSupply;
    }

    function price() public view returns (uint256) {
        // linearly change from startPrice to endPrice depending on the number of tokens
        // minted so far

        return startPrice + (endPrice - startPrice) * totalMinted / maxSupply;
    }

    function mint(uint256 nTokens) external payable whenSaleStarted {
        super.beforeMint();

        require(nTokens + totalMinted <= maxSupply, "max supply reached");
        require(nTokens <= maxPerMint, "Too many tokens to mint");
        require(msg.value >= nTokens * price(), "Not enough ETH to mint");

        nft.mintExternal{value: msg.value}(nTokens, msg.sender, bytes32(0x0));

        totalMinted += nTokens;
    }
}
