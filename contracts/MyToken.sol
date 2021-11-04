// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() public ERC20("MyToken", "MTKN"){
        // We are minting and transferring 1 million tokens for the account that is deploying the smart contract (we are using the default 18 decimals for the ERC20 token, that means that if we want to mint 1 token, you will represent it as 1000000000000000000, 1 with 18 zeros).
        _mint(msg.sender, 1000000000000000000000000);
    }
}
