//SPDX-License-Identifier:GPL-3.0


pragma solidity >=0.7.0<0.9.0;

contract ArrayPractice{
    uint[] myArr;

    function push(uint num) public {
         myArr.push(num);
    }

    function pop()public{
        myArr.pop();
    }

    function returnArr()view public returns(uint[] memory){
        return myArr;
    }

    function countArr() view public returns(uint){
        uint count = 0;
        for (uint i=0; i<myArr.length-1; i++){
            count+=myArr[i];
        }
        return count;
    }

    function deleteArr(uint i) public{
        delete myArr[i];
    }
}
