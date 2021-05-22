// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/lunaswap/blob/main/core/PancakeFactory.sol";
import "./core/PancakeFactory.sol";

contract LunaFactory is PancakeFactory {
    constructor(address _feeToSetter) PancakeFactory(_feeToSetter) {
        
    }
}