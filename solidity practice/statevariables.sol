// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract StateVariables{

    function returnAge(uint age) internal pure returns(uint){
        
        return age;
    }

    // function returnName(string memory name) internal view returns (string memory){
    //     if (age==26){
    //         return name;
    //     }else{
    //         return "This is not sulabh";
    //     }
       
    // }

    function returnAgeWithName() public pure returns(string memory){

        uint myAge = returnAge(46);

        if(myAge==26){
            return "Correct, this is my age!!!";
        }else{
            return "Sorry better luck next time";
        }
    }
}