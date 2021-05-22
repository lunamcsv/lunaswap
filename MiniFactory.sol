// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/lunaswap/blob/main/core/PancakeFactory.sol";
import "./core/PancakeFactory.sol";

contract MiniFactory is PancakeFactory {
    constructor() PancakeFactory(msg.sender) {
        feeTo = msg.sender;
    }
}