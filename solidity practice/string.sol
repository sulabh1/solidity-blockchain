// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract StringImplement {
   
   function compareTwoString(string memory _firstName, string memory _secondName)public pure returns(bool){
       return keccak256(abi.encodePacked(_firstName))==keccak256(abi.encodePacked(_secondName));

   }

    
}