//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract ByteImplementation{
    string firstName;
    constructor(){
       firstName  = "sulabh";
    }


    function strToByte(string memory data) pure internal returns(bytes memory){
        return bytes(data);
    }

    function returnLength() public view returns(uint){
        uint lenOfName = strToByte(firstName).length;
        return lenOfName;
    }

    function returnStr() public view returns(string memory){
        return firstName;
    }

    function returbyte() public view returns(bytes memory){
        bytes memory lenOfName = strToByte(firstName);
        return lenOfName;
    }

    function loopingStr() view public returns(bool){
        for(uint i=0; i<returnLength()-1; i++){
            if(returbyte()[i]=="q"){
                return true;
            }else{
                return false;
            }
            
        }
        
    }




}