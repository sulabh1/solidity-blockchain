//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract ByteImplementation{

    function strToByte(string memory data) pure internal returns(bytes memory){
        return bytes(data);
    }

    function returnLength() public pure returns(uint){
        return strToByte("sulabh").length;
    }

//cannot execute split. returns error

    // function splitStr() public pure returns(string[] memory){
    //     return strToByte("sulabh").split(" ");
    // }


}