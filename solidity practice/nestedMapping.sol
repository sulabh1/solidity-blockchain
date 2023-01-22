//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0<0.9.0;


contract NestedMap{
    struct MyInfo{
        string name;
        uint rollNo;
        uint grade;
    }
    MyInfo myInfo;
    mapping(string=> mapping(address=>MyInfo)) public myDetail;

    function getGrade(string memory  _name, uint _roll, uint _grade) private returns(uint){
        myDetail[_name][msg.sender]=MyInfo(_name, _roll, _grade);
    }

    function getGrade() public view returns(uint){
        return  myInfo.grade;
    }
}