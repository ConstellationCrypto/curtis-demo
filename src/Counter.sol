// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ArbInfo} from "./ArbInfo.sol"; 

contract Counter {
    uint256 public number;
    ArbInfo arbInfo = ArbInfo(0x0000000000000000000000000000000000000065);

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function setAutomaticYield() public {
        arbInfo.configureAutomaticYield();
    }

    function setVoidYield() public {
        arbInfo.configureVoidYield();
    }

    function setDelegateYield(address a) public {
        arbInfo.configureDelegateYield(a);
    }

    receive() external payable  { }    
}
