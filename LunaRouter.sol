// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/lunaswap/blob/main/periphery/PancakeRouter.sol";
import "./periphery/PancakeRouter.sol";

contract LunaRouter is PancakeRouter {
    constructor(address _factory, address _WETH) PancakeRouter(_factory, _WETH) {
        
    }
}