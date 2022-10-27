// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Balance{
    uint8 currBalance;

    function increment() public{
        currBalance++;
    }

    function decrement() public{
        require(currBalance>=1,"Insufficient balance, can't decrement anymore!");
        currBalance--;
    }

    function getBalance() public view returns(uint8){
        return currBalance;
    }

    function setBalance(uint8 _num) public {
        currBalance=_num;
    }
}

