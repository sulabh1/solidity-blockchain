// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract ConstructorFunc{
    uint public count;
    constructor(uint newCount){
        count=newCount;

    }
    function increaseCount() public {
        count++;
    }
    function getCount() view public returns(uint){
        if(count>20){
            return 0;
        }else if(count<20){
            return 1;
        }else{
            return count;
        }
       
    }
}