// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract ReturnStr{
    string a;
    string b;
    constructor() {
        a="sulabh";
        b="adhikari";
        
    }

    function returnSender() view public returns (string memory){
        return a;
    }
}