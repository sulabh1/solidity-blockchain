//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0<0.9.0;


contract NestedMap{
    struct MyInfo{
        string name;
        uint rollNo;
        uint grade;
    }
    MyInfo myInfo;

    uint[] interger;
    string[] str;
    mapping(string=> mapping(address=>MyInfo)) private myDetail;

    function getGrade(string memory  _name, uint _roll, uint _grade) public returns(uint){
        myDetail[_name][msg.sender]=MyInfo(_name, _roll, _grade);
    }

    function getGrades(string memory _name) public view returns(uint){
    //    if(myDetail[_name][msg.sender].grade==)

    return myDetail[_name][msg.sender].grade;
    }

    function getValueOfMsgsender() payable public returns(uint){
        return msg.value;
    } 

    function getMsgSenderAddress() view public returns(address){
        return msg.sender;
    }

    function checkGrade(string memory _name) view public returns(string memory){
        if(myDetail[_name][msg.sender].grade>=40){
            return "This person can get admission to our school";
        }else{
            return "Sorry we cannot proceed further. Better luck next time!!!!";
        }
    }


}