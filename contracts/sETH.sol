// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Synth sETH Token (Synthetic ETH)
/// @notice Verified ERC-20 token without mint/burn, fixed supply
contract sETH is ERC20, Ownable {
    uint256 private constant INITIAL_SUPPLY = 100_000 * 1e18;

    constructor() ERC20("Synth sETH", "sETH") Ownable(msg.sender) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}

