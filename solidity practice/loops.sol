// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract LoopCheck{



    function checkMultiples(uint[] memory _num1, uint _num2)pure public returns (bool){
        for (uint i = 1; i<_num1.length-1; i++){
            if(checkDivisibility(_num1[i], _num2)){
                return true;
            }else{
                return false;
            }
        }

    }
    function checkDivisibility(uint _num, uint _nums)pure internal returns(bool){

        if(_nums%_num==0){
            return true;
        }else{
            return false;
        }

    }
}