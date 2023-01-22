//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract MappingPractice{
    uint[] myArr;
    mapping(address=>uint) private myAdress;

    function listingArr()public view returns(uint[] memory){
        return myArr;
    }
    function listingMapping(address _myAddr, uint _i) public returns(uint){
        myAdress[_myAddr]=_i;
        return myAdress[_myAddr];
    }
    function maniArr(address _myAddr) public {
        myArr.push(myAdress[_myAddr]);
    }
}