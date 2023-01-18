//SPDX-License-Identifier:GPL3.0

pragma solidity >=0.7.0<0.9.0;

contract structLearning{
    struct Student{
        uint id;
        string name;
        uint rollNo;
        uint grade;
    }

    Student student;

    function getData() public{
        student  = Student(1, "sulabh", 21, 45);
    }

    function getId() view public returns(uint){
        return student.grade;
    }
}